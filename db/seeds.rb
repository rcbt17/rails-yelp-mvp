# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."

10.times do
  name = Faker::Restaurant.name
  address = "#{Faker::Address.street_address} #{Faker::Address.postcode}, #{Faker::Address.city}"
  category = ["chinese", "italian", "japanese", "french", "belgian"].sample
  restaurant = Restaurant.create!(name: name, address: address, category: category)
  puts "Created #{restaurant.name}"
end

puts "Finished!"
