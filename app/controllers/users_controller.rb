class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @user_items = @user.items
    @user_bookings = @user.bookings
  end
end
