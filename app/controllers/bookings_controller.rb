class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Bookings.find(params[:id])
  end

  def new
    @booking = Bookings.new
  end

  def create
    @booking = Bookings.new(booking_params)

    if @booking.save
      redirect_to @booking, notice: 'Booking was successfully created.'
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
