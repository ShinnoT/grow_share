class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @user_items = @user.items
    @user_bookings = @user.bookings

  end

  def index
    @users = User.all
  end

  def show
    @users = User.find(params[:id])
    @review = Review.new  # <-- You need this now.
  end

end
