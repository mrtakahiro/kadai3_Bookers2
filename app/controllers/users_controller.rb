class UsersController < ApplicationController

  def show
    @user = current_user
    @book = Book.new
  end

  def edit
    @user = User.find(params[:id])
    @book = Book.new
  end

  def update
    @user = user.find(params[:id])
    @user.update(user_params)
    flash[:notice] = "You have updated user successfully."
    redirect_to user_path(user.id)
  end

  def index
    @book = Book.new
    @books = Book.all
    @users = User.all
    @user = current_user
  end

  private
  def user_params
    params.require(:user).permit(:title, :body)
  end
end
