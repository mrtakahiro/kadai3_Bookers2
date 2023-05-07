class BooksController < ApplicationController
  def new
    @book_image = Books.new
  end

  def index
    @book_images = Books.page(params[:page])
  end

  def show
    @book_image = Books.find(params[:id])
    @book_comment = Books.new
  end

  def edit
  end
end
