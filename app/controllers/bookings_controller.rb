class BookingsController < ApplicationController
  def index
    @bookings = Booking.all.select { |booking| booking.user == current_user }
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

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to task_path(@booking)
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to tasks_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
