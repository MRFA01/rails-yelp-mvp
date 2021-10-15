# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."

c = "chinese"
it = "italian"
ja = "japanese"
fr = "french"
be = "belgian"

cate = [c, it, ja, fr, be]

10.times do
  rest = Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_name,
    phone_number: Faker::PhoneNumber.cell_phone,
    category: cate.sample
  )
  rev = Review.new(
    content: "good",
    rating: (1..5).to_a.sample
  )
  rev.restaurant = rest
  rev.save
end
puts "Finished!"
