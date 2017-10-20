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

cities = ["meguro","tokyo","shinjuku","komagome","ebisu","ueno","hokkaido","osaka","roppongi"]
categories = ["fruit", "vegetable"]
photos = ["http://blog.oxforddictionaries.com/wp-content/uploads/potato.jpg", "http://www.motherjones.com/wp-content/uploads/2017/08/pumpkin-4.jpg?w=630"]
price = [12, 5, 3, 6]
quant = [10, 20, 30, 40]

12.times do
  User.create(email: Faker::Internet.email, first_name: Faker::Name.first_name, last_name:Faker::Name.last_name , password: 'password', address: cities.sample)
end

12.times do
  food = Item.create(
    name: Faker::Food.ingredient,
    good_until: Date.today,
    category: categories.sample,
    quantity: quant.sample,
    indicator: "kg",
    user_id: User.order("RANDOM()").first.id,
    price: price.sample,
    description: "this is some great produce!"
  )

  food.photo_url = photos.sample


end

new_user = User.create(first_name: "shinno", last_name: "t", email: "email@email.com", password: "123456", address: cities.sample)
other_user = User.create(first_name: "whatever", last_name: "whatever", email: "blahblah@email.com", password: "123456", address: cities.sample)
user5 = User.create(first_name: "whatever", last_name: "whatever", email: "blahblahsfdf@email.com", password: "123456", address: cities.sample)
user6 = User.create(first_name: "whatever", last_name: "whatever", email: "blahblahfrg@email.com", password: "123456", address: cities.sample)
user7 = User.create(first_name: "whatever", last_name: "whatever", email: "blahblahsrgrrg@email.com", password: "123456", address: cities.sample)
user8 = User.create(first_name: "whatever", last_name: "whatever", email: "blahblahrgswefg@email.com", password: "123456", address: cities.sample)



potato = Item.new(name: "Potato", good_until: Date.today, category: "vegetable", quantity: 10, indicator: "kg", price: 15, description: "this is some great produce!")
potato.user = new_user
potato.photo_url = "http://blog.oxforddictionaries.com/wp-content/uploads/potato.jpg"
potato.save

potato2 = Item.new(name: "Potato", good_until: Date.today, category: "vegetable", quantity: 10, indicator: "kg", price: 15, description: "this is some great produce!")
potato2.user = other_user
potato2.photo_url = "http://blog.oxforddictionaries.com/wp-content/uploads/potato.jpg"
potato2.save

potato3 = Item.new(name: "Potato", good_until: Date.today, category: "vegetable", quantity: 10, indicator: "kg", price: 15, description: "this is some great produce!")
potato3.user = user5
potato3.photo_url = "http://blog.oxforddictionaries.com/wp-content/uploads/potato.jpg"
potato3.save

potato4 = Item.new(name: "Potato", good_until: Date.today, category: "vegetable", quantity: 10, indicator: "kg", price: 15, description: "this is some great produce!")
potato4.user = user6
potato4.photo_url = "http://blog.oxforddictionaries.com/wp-content/uploads/potato.jpg"
potato4.save

potato5 = Item.new(name: "Potato", good_until: Date.today, category: "vegetable", quantity: 10, indicator: "kg", price: 15, description: "this is some great produce!")
potato5.user = user7
potato5.photo_url = "http://blog.oxforddictionaries.com/wp-content/uploads/potato.jpg"
potato5.save

potato6 = Item.new(name: "Potato", good_until: Date.today, category: "vegetable", quantity: 10, indicator: "kg", price: 15, description: "this is some great produce!")
potato6.user = user8
potato6.photo_url = "http://blog.oxforddictionaries.com/wp-content/uploads/potato.jpg"
potato6.save

puts 'Creating items!'


Booking.create(user: User.order("RANDOM()").first, item: Item.order("RANDOM()").first, date: Date.today)

puts "saved booking"

# Item.first.user.address
