# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Booking.destroy_all
Item.destroy_all
User.destroy_all
puts 'Cleaning DB!'

cities = ["meguro","tokyo","shinjuku","komagome","ebisu","ueno","hokkaido","osaka","rappongi"]
categories = ["fruit", "vegetable"]
price = [12, 5, 3, 6]
quant = [10, 20, 30, 40]

12.times do
  User.create(email: Faker::Internet.email, first_name: Faker::Name.first_name, last_name:Faker::Name.last_name , password: 'password', address: cities.sample)
end

12.times do
  Item.create(name: Faker::Food.ingredient, good_until: Date.today, category: categories.sample, quantity: quant.sample, indicator: "kg", user_id: User.order("RANDOM()").first.id, price: price.sample, description: "this is some great produce!")
end

puts 'Creating items!'

Booking.create(user: User.order("RANDOM()").first, item: Item.order("RANDOM()").first, date: Date.today)

puts "saved booking"

# Item.first.user.address
