class BooksController < ApplicationController
  before_action :authenticate_user!, only: [:create]

  def search
    books = GoogleBooks.search("#{params[:keyword]}", {:count => 30}).to_a
    @books = Kaminari.paginate_array(books).page(params[:page]).per(10)
  end

  def create
    @book = Book.new(book_params)
    @book.save
    redirect_to books_search_path(keyword: params[:keyword], page: params[:page])
  end

  private
  def book_params
    params.permit(:title, :authors, :publisher, :published_date, :description, :image_link, :info_link, :isbn, :status_id).merge(user_id: current_user.id)
  end
end
