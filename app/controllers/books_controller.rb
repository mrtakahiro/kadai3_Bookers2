class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    @book = PostImage.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to post_images_path
  end

  def index
    @book = Book.all
    @user = current_user
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
  end

  private
  def book_params
    params.require(:book).permit(:title, :body, :image)
  end
end
