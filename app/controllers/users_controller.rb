class UsersController < ApplicationController
  before_action :setup_sidekiq

  def show
    @user = get_user(params[:id])
    @select_options = Task.all.map { |i| [i.name, i.id] }
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
    @user = get_user(params[:id])
  end

  def update
    @user = get_user(params[:id])
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      render 'edit'
    end
  end

  def destroy
    @user = get_user(params[:id])
    @user.destroy
    redirect_to root_path
  end

  def assign
    @user = get_user(params[:id])
    @task_id = Task.find(params[:user][:tasks])
    @user.tasks = @user.tasks.push @task_id unless @user.tasks.include? @task_id
    if @user.tasks.include? @task_id
      flash[:error] = 'That task is already assigned to this user.'
    end
    unless @user.save
      flash[:error] = 'Sorry, something went wrong. Please try again.'
    end
    redirect_to user_path(@user)
  end

  def remove
    @user = get_user(params[:user_id])
    @user.tasks.delete Task.find(params[:id])
    unless @user.save
      flash[:error] = 'Sorry, something went wrong. Please try again.'
    end
    redirect_to user_path(@user)
  end

  private

    def get_user(id)
      User.find(id)
    end

    def user_params
      params.require(:user).permit(:name, :email, :about, :status)
    end

end
