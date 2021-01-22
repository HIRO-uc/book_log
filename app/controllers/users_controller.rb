class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :move_to_top

  def show
    @books = current_user.books
  end

  def move_to_top
    redirect_to root_path if current_user.id != params[:id]
  end
end
