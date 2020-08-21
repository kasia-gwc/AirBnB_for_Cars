class BookingsController < ApplicationController
  before_action :set_listing, only: %i[new create show]

  def index
    @bookings = Booking.all.select { |booking| booking.user == current_user }
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
    # @listing = Listing.find(params[:listing_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @listing = Listing.find(params[:listing_id])
    @booking.listing = @listing
    @booking.user = current_user
    if @booking.save
      redirect_to bookings_path
      flash[:notice] = 'Your Booking was successfully created   🚀'
      # render html: "<script>alert('No vv users!')</script>".html_safe
    else
      redirect_to @listing
      flash[:notice] = 'A Problem appeared. Are you logged in?'
      # render html: "<script>alert('No users!')</script>".html_safe
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.update(booking_params)
      redirect_to booking_path(@booking), notice: 'Booking was updated'
    else
      render :edit
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to tasks_path
  end

  private

  def set_listing
    @listing = Listing.find(params[:listing_id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
