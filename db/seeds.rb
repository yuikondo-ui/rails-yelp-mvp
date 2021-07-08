# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "cleaning up database"

50.times do
  Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: ["🇨🇳chinese", "🇮🇹italian", "🇯🇵japanese", "🇫🇷french", "🇧🇪belgian"].sample
  )
end

50.times do
  Review.create(
    rating: rand(1..5),
    restaurant_id: rand(0..50),
    content: ["wonderful", "Awesome", "Tasty", "Bad"].sample
  )
end