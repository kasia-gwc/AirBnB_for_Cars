class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :listing
  has_one :review

  # validate :end_date_after_start_date

  private

  def end_date_after_start_date
    errors.add(:end_date, "must be after the start date") if end_date < start_date
  end

  # def start_date_valid?
  #   errors.add(:start_date, "start date must begin after listing opens") if start_date < listing.start_date
  # end

  # def end_date_valid?
  #   errors.add(:end_date, "end date must finish before listing closes") if listing.end_date < end_date
  # end
end
