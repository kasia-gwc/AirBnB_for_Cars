class ListingsController < ApplicationController
  def index
    if params[:query].present?
      @listings = user_signed_in? ? Listing.search_by_vehicle_type_and_name(params[:query]).reject { |listing| listing.user == current_user } : Listing.search_by_vehicle_type_and_name(params[:query])
    else
      @listings = user_signed_in? ? Listing.all.reject { |listing| listing.user == current_user } : Listing.all
    end
  end

  def show
    @listing = Listing.find(params[:id])
    @booking = Booking.new
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(listing_params)
    if @listing.save
      redirect_to @listing, notice: 'Listing was succesfully created'
    else
      render :new
    end
  end

  def edit
    @listing = Listing.find(params[:id])
  end

  def update
    @listing = Listing.find(params[:id])
    if @listing.update(listing_params)
      redirect_to listing_path(@listing), notice: 'Listing was updated'
    else
      render :edit
    end
  end

  def destroy
    @listing = Listing.find(params[:id])
    @listing.destroy
    redirect_to listing_path, notice: 'Listing was removed'
  end

  def my_listings
    @listings = Listing.all.select { |listing| listing.user == current_user }
  end

  def my_listings_show
    @listing = Listing.find(params[:id])
  end

  private

  def set_listing
    @listing = Listing.find(params[:id])
  end

  def listing_params
    params.require(:listing).permit(:vehicle_type, :name, :description, :street, :zip, :city, :country, :start_date, :end_date, :price)
  end
end
