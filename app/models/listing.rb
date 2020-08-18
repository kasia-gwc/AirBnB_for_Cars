class Listing < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo
  validates :vehicle_type, :name, :description, :street, :zip, :city, :country, :start_date, :end_date, presence: true
  validates :description, length: { minimum: 30, too_short: "Please add a more detailed description" }
end
