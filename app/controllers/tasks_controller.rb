class TasksController < ApplicationController
  def index
    @user = get_user(params[:user_id])
    @tasks = @user.tasks
  end

  def show
    @user = get_user(params[:user_id])
    @task = @user.tasks.find(params[:id])
  end

  def new
    @user = get_user(params[:user_id])
    @task = @user.tasks.build
    flash[:url] = user_tasks_path(@user)
  end

  def create
    @user = get_user(params[:user_id])
    @task = @user.tasks.build(task_params)
    if @task.save
      redirect_to root_path
    else
      flash.now[:url] = user_tasks_path(@user)
      render 'new'
    end
  end

  def edit
    @user = get_user(params[:user_id])
    @task = @user.tasks.find(params[:id])
    flash[:url] = user_task_path(@user, @task)
  end

  def update
    @user = get_user(params[:user_id])
    @task = @user.tasks.find(params[:id])
    if @task.update(task_params)
      redirect_to user_task_path(@user, @task)
    else
      flash.now[:url] = user_task_path(@user, @task)
      render 'edit'
    end
  end

  def destroy
    @user = get_user(params[:user_id])
    @task = @user.tasks.find(params[:id])
    @task.destroy
    redirect_to root_path
  end

  private

    def get_user(id)
      User.find(id)
    end

    def task_params
      params.require(:task).permit(:name, :description, :completed)
    end

end
