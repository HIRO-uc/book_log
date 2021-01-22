class BooksController < ApplicationController
  before_action :authenticate_user!, except: [:search]
  before_action :current_path_book, only: [:update, :show, :move_to_top]
  before_action :move_to_top, except: [:search, :create]

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
    @book.update(edit_book_params)
    redirect_to user_path(current_user)
  end

  def show
  end

  private
  def new_book_params
    params.permit(:title, :authors, :publisher, :published_date, :description, :image_link, :info_link, :isbn, :status_id).merge(user_id: current_user.id)
  end

  def edit_book_params
    params.require(:book).permit(:status_id)
  end

  def current_path_book
    @book = Book.find(params[:id])
  end

  def move_to_top
    redirect_to root_path if current_user.id != @book.user_id
  end
end
