class Listing < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo

  include PgSearch::Model
  pg_search_scope :search_by_vehicle_type_and_name,
    against: [ :vehicle_type, :name ],
    using: {
      tsearch: { prefix: false } # <-- now `superman batm` will return something!
    }

  validates :vehicle_type, :name, :description, :street, :zip, :city, :country, :start_date, :end_date, :price, presence: true
  validates :description, length: { minimum: 15, too_short: "Please add a more detailed description" }
  geocoded_by :address
  after_validation :geocode

  def address
    [street, city, country].compact.join(', ')
  end
end
