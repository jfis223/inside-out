class BookingsController < ApplicationController
  before_action :set_task, only: [:show, :edit]

  def index
    @bookings = Booking.all
  end

  def show
  end

  def new
    @feeling = Feeling.find(params[:feeling_id])
    @booking = Booking.new
    authorize @booking
  end

  def create
    @feeling = Feeling.find(params[:feeling_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.feeling = @feeling
    authorize @booking

    if @booking.save
      redirect_to @booking, notice: 'Your new booking has been saved!'
    else
      render :new
    end
  end

  def edit
  end

  def update
    @booking.update(booking_params)
    redirect_to booking_path
  end

  private

  def set_task
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def booking_params
    params.require(:booking).permit(:check_in, :check_out, :total_price)
  end
end
