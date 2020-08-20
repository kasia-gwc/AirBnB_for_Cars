class Listing < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo
  validates :vehicle_type, :name, :description, :street, :zip, :city, :country, :start_date, :end_date, :price, presence: true
  validates :description, length: { minimum: 15, too_short: "Please add a more detailed description" }
  geocoded_by :street
  geocoded_by :zip
  geocoded_by :city
  geocoded_by :country
  after_validation :geocode, if: :will_save_change_to_address?

  # def address
  #  [street, zip, city, country].compact.join(', ')
  # end
end
