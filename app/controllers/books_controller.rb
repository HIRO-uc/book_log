class BooksController < ApplicationController
  before_action :authenticate_user!, only: [:create]

  def search
    books = GoogleBooks.search("#{params[:keyword]}", {:count => 30}).to_a
    @books = Kaminari.paginate_array(books).page(params[:page]).per(10)
  end

  def create
    @book = Book.new(new_book_params)
    @book.save
    redirect_to books_search_path(keyword: params[:keyword], page: params[:page])
  end

  def update
    @book = Book.find(params[:id])
    @book.update(edit_book_params)
    redirect_to user_path(current_user)
  end

  def show
    @book = Book.find(params[:id])
  end

  private
  def new_book_params
    params.permit(:title, :authors, :publisher, :published_date, :description, :image_link, :info_link, :isbn, :status_id).merge(user_id: current_user.id)
  end

  def edit_book_params
    params.require(:book).permit(:status_id)
  end
end
