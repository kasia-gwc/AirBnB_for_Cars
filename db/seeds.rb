# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require "open-uri"

user = User.create!(email: "fictional@larry.com", first_name: "Larry", last_name: "Fiction", password: "abcdef")

  file = URI.open('https://images.unsplash.com/photo-1589730962397-a67757425c1c?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjF9')
  balloon_one = Listing.create!(
    user: user,
    vehicle_type: "Airballoon",
    name: "Hot-Air",
    description: "Enjoy real views with real friends. Or perfect for a romantic picnic in the sky",
    street: "Genslerstraße 95",
    zip: "12099",
    city: "Berlin",
    country: "Germany",
    price: 500,
    start_date: Faker::Date.between(from: Date.today, to: 1.year.from_now),
    end_date: Faker::Date.between(from: 1.year.from_now, to: 2.year.from_now)
    )
  balloon_one.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  balloon_one.save!

    file = URI.open('https://images.unsplash.com/photo-1522037576655-7a93ce0f4d10?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjF9')
  car_one = Listing.create!(
    user: user,
    vehicle_type: "Car",
    name: "The Bull",
    description: "Smell the burn of rubber on the Autobahn. Only for real adrenaline junkies.",
    street: "Rhinstrasse 64",
    zip: "80999",
    city: "München",
    country: "Germany",
    price: 300,
    start_date: Faker::Date.between(from: Date.today, to: 1.year.from_now),
    end_date: Faker::Date.between(from: 1.year.from_now, to: 2.year.from_now)
    )
  car_one.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  car_one.save!

      file = URI.open('https://images.unsplash.com/photo-1554254464-7046778097bf?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjF9')
  cruiser_one = Listing.create!(
    user: user,
    vehicle_type: "Cruiseship",
    name: "The Golden Float",
    description: "Bring your friends, your family or the entire city.",
    street: "Kopenhagenerstrasse 3",
    zip: "23966",
    city: "Wismar",
    country: "Germany",
    price: 300000,
    start_date: Faker::Date.between(from: Date.today, to: 1.year.from_now),
    end_date: Faker::Date.between(from: 1.year.from_now, to: 2.year.from_now)
    )
  cruiser_one.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  cruiser_one.save!

        file = URI.open('https://images.unsplash.com/photo-1579118559062-39e94a22dbb8?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjF9')
  heli_one = Listing.create!(
    user: user,
    vehicle_type: "Helicopter",
    name: "Der Hubschrauber",
    description: "Don't be tired of traffic",
    street: "Tempelhofer Damm",
    zip: "12101",
    city: "Berlin",
    country: "Germany",
    price: 1000,
    start_date: Faker::Date.between(from: Date.today, to: 1.year.from_now),
    end_date: Faker::Date.between(from: 1.year.from_now, to: 2.year.from_now)
    )
  heli_one.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  heli_one.save!

        file = URI.open('https://images.unsplash.com/photo-1474302770737-173ee21bab63?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjF9')
  jet_one = Listing.create!(
    user: user,
    vehicle_type: "Jet",
    name: "Topgun",
    description: "Corona holiday? We fly you where you need to be.",
    street: "Melli-Beese-Ring 1",
    zip: "12529",
    city: "Schönefeld",
    country: "Germany",
    price: 40000,
    start_date: Faker::Date.between(from: Date.today, to: 1.year.from_now),
    end_date: Faker::Date.between(from: 1.year.from_now, to: 2.year.from_now)
    )
  jet_one.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  jet_one.save!

        file = URI.open('https://images.unsplash.com/photo-1473682150760-51d4f94b09d4?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjF9')
  jetski_one = Listing.create!(
    user: user,
    vehicle_type: "Jetski",
    name: "The Spree",
    description: "Time to warm up at the Muggelsee",
    street: "Müggelseedamm 1",
    zip: "12587",
    city: "Berlin",
    country: "Germany",
    price: 500,
    start_date: Faker::Date.between(from: Date.today, to: 1.year.from_now),
    end_date: Faker::Date.between(from: 1.year.from_now, to: 2.year.from_now)
    )
  jetski_one.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  jetski_one.save!

  file = URI.open('https://images.unsplash.com/photo-1474128710184-2a547ec84777?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjF9')
  limo_one = Listing.create!(
    user: user,
    vehicle_type: "Limo",
    name: "Shepherd",
    description: "Enjoy nightlife in style",
    street: "Rudi-Dutschke-Straße 26",
    zip: "10969",
    city: "Berlin",
    country: "Germany",
    price: 200,
    start_date: Faker::Date.between(from: Date.today, to: 1.year.from_now),
    end_date: Faker::Date.between(from: 1.year.from_now, to: 2.year.from_now)
    )
  limo_one.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  limo_one.save!

    file = URI.open('https://images.unsplash.com/photo-1575976933959-b47ffbe1ebc0?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjF9')
  submarine_one = Listing.create!(
    user: user,
    vehicle_type: "Submarine",
    name: "Kursk",
    description: "Switch thing upside down and travel underwater",
    street: "Ost-West-Straße 8",
    zip: "18147",
    city: "Rostock",
    country: "Germany",
    price: 50000,
    start_date: Faker::Date.between(from: Date.today, to: 1.year.from_now),
    end_date: Faker::Date.between(from: 1.year.from_now, to: 2.year.from_now)
    )
  submarine_one.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  submarine_one.save!

    file = URI.open('https://images.unsplash.com/photo-1541185933-ef5d8ed016c2?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjF9')
  rocket_one = Listing.create!(
    user: user,
    vehicle_type: "Rocket",
    name: "Big Fucking Rocket",
    description: "One way ticket to Mars",
    street: "Boca Chica Blvd 1",
    zip: "78521",
    city: "Texas",
    country: "United States",
    price: 300000000,
    start_date: Faker::Date.between(from: Date.today, to: 1.year.from_now),
    end_date: Faker::Date.between(from: 1.year.from_now, to: 2.year.from_now)
    )
  rocket_one.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  rocket_one.save!

    file = URI.open('https://images.unsplash.com/photo-1527685609591-44b0aef2400b?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjF9')
  ship_one = Listing.create!(
    user: user,
    vehicle_type: "Sailingship",
    name: "The Caribean",
    description: "Explore the high sees of the north",
    street: "Hellingweg 98",
    zip: "2583 WH",
    city: "Den Haag",
    country: "The Netherlands",
    price: 1000,
    start_date: Faker::Date.between(from: Date.today, to: 1.year.from_now),
    end_date: Faker::Date.between(from: 1.year.from_now, to: 2.year.from_now)
    )
  ship_one.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  ship_one.save!

User.create!(email: "n@r", first_name: "n", last_name: "r", password: "abcdef")
















