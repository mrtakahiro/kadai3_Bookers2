class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @book = @user.post_images.page(params[:page])
  end

  def edit
  @user = User.find(params[:id])
  end

  def index
    @user = User.all
  end
end
