class UsersController < ApplicationController
  def show
    @user = current_user
    @book = Book.new
  end

  def edit
    @user = User.find(params[:id])
    @book = Book.new
  end

  def index
    @book = Book.new
    @books = Book.all
    @users = User.all
    @user = current_user
  end
end
