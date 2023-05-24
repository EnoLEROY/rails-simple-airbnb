# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


require 'faker'

Flat.destroy_all

number = 10

number.times do
  infos = {
    name: Faker::Address.community,
    address: Faker::Address.full_address,
    description: Faker::Lorem.paragraph,
    price_per_night: (50..300).to_a.sample,
    number_of_guests: (2..7).to_a.sample
  }
  Flat.new(infos).save
end

puts "#{number} flats created"
