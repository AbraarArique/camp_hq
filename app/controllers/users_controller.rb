class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = get_user(params[:id])
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

  private

    def get_user(id)
      User.find(id)
    end

    def user_params
      params.require(:user).permit(:name, :email, :about, :status)
    end

end
