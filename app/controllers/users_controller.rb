class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @user_items = @user.items
    @user_bookings = @user.bookings
    @review = Review.new  # <-- You need this now.
  end
end
