# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# db/seeds.rb
require 'faker'
# categories = ["chinese", "italian", "japanese", "french", "belgian"]

# 5.times do
#   Restaurant.create!(
#     name: Faker::Restaurant.name,
#     address: Faker::Address.full_address,
#     category: categories.sample
#   )
# end

restaurants = Restaurant.all

restaurants.each do |restaurant|
  5.times do
    Review.create(
      rating: rand(1..5),
      content: Faker::Restaurant.review,
      restaurant_id: restaurant.id
    )
  end
end
