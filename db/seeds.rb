# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do
  Listing.create(
    vehicle_type: Faker::Vehicle.make,
    name: Faker::Name.unique.name,
    description: "This is a really fucking awesome machine, fit for at least 100 people and liters of booze",
    street: Faker::Address.street_address,
    zip: Faker::Address.zip_code,
    city: Faker::Address.city,
    country: Faker::Address.country,
    start_date: Faker::Date.between(from: Date.today, to: 1.year.from_now),
    end_date: Faker::Date.between(from: 1.year.from_now, to: 2.year.from_now)
    )
end
