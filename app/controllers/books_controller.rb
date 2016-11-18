class BooksController < ApplicationController
  include HTTParty
  skip_before_action :authenticate_user!
  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.author = User.last
    if @book.save
      redirect_to @book
    else
      render :new
    end
  end

  def show
    @response = HTTParty.get('http://api.stackexchange.com/2.2/questions?site=stackoverflow')
    byebug
    @user = Book.find(params[:id])
  end

  def show_only_author
    @user = Book.find(params[:id])
  end

  private

  def book_params
    params.require(:book).permit(:name)
  end
end
