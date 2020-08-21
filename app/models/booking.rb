class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :listing
  has_one :review

  validate :end_date_after_start_date, :start_date_valid?, :end_date_valid?

  private

  def end_date_after_start_date
    errors.add(:end_date, "Ending date of booking must be after the Starting date") if end_date < start_date
  end

  def start_date_valid?
    errors.add(:start_date, "Starting date of booking cannot be before Listing opens") if start_date < listing.start_date
  end

  def end_date_valid?
    errors.add(:end_date, "Ending date of booking cannot be after Listing closes") if listing.end_date < end_date
  end
end
