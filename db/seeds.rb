# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "faker"

puts "Cleaning database..."
Flat.destroy_all

puts "Creating some flats..."
10.times do
  flat = Flat.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    description: Faker::Restaurant.description,
    price_per_night: [30..42].sample,
    number_of_guests: [2..6].sample
  )

  puts "Flat with id #{flat.id} was created"

end

puts "Created #{Flat.count} flats"