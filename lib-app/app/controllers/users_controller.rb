class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    new_user = params.require(:user).permit(:first_name, :last_name, :email, :password)
    @user = User.create(new_user)
    login(@user)
    redirect_to @user
  end

  def show
    @user = User.find_by_id(params[:id])
  end

  def destroy
    @user = User.find_by_id(params[:id])
  end

end
