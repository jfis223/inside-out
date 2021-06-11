class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @feelings = @user.feelings
    @bookings = @user.bookings
    authorize @user
  end
end
