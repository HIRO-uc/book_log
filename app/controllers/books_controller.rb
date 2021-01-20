class BooksController < ApplicationController
  def search
    books = GoogleBooks.search("#{params[:keyword]}", {:count => 30}).to_a
    @books = Kaminari.paginate_array(books).page(params[:page]).per(10)
  end

  def create
    @book = Book.new(book_params)
    @book.save
  end

  private
  def book_params
    binding.pry
    params.permit(:title, :authors, :published_date, :image_link, :info_link, :isbn).merge(user_id: current_user.id)
  end
end
