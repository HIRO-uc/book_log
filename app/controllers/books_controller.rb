class BooksController < ApplicationController
  def search
    books = GoogleBooks.search("#{params[:keyword]}", {:count => 30}).to_a
    @books = Kaminari.paginate_array(books).page(params[:page]).per(10)
  end
end
