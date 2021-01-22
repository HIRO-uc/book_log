class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @books = current_user.books
  end
end
