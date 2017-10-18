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



seller = User.create(email: "bobo@bobo.com", first_name:"Bo", last_name:"Bi", password: 'password') #u1
buyer = User.create(email: "coco@coco.com", first_name:"Co", last_name:"Ci", password: 'password')

bananas = Item.new(name: "banana", good_until: Date.today, category: "vegetable", quantity: 100, indicator: "kg",address: "tokyo")
coconuts = Item.new(name: "coconut", good_until: Date.today, category: "fruit", quantity: 100, indicator: "kg",address: "tokyo")
cherries = Item.new(name: "cherries", good_until: Date.today, category: "vegetable", quantity: 100, indicator: "kg",address: "tokyo")
cabbage = Item.new(name: "cabbage", good_until: Date.today, category: "fruit", quantity: 100, indicator: "kg",address: "tokyo")
couliflower = Item.new(name: "couliflower", good_until: Date.today, category: "vegetable", quantity: 100, indicator: "kg",address: "tokyo")
durian = Item.new(name: "durian", good_until: Date.today, category: "fruit", quantity: 100, indicator: "kg",address: "tokyo")
pinneaples = Item.new(name: "pinneaple", good_until: Date.today, category: "vegetable", quantity: 100, indicator: "kg",address: "tokyo")
ginger = Item.new(name: "ginger", good_until: Date.today, category: "fruit", quantity: 100, indicator: "kg",address: "tokyo")
apples = Item.new(name: "apples", good_until: Date.today, category: "vegetable", quantity: 100, indicator: "kg",address: "tokyo")


bananas.user = seller
bananas.save
coconuts.user = seller
coconuts.save
puts 'Creating items!'

bananas.user = seller
bananas.save
coconuts.user = seller
coconuts.save
cherries.user = seller
cherries.save

durian.user = seller
durian.save
couliflower.user = seller
couliflower.save
pinneaples.user = seller
pinneaples.save


b1 = Booking.new(user: buyer, item: coconuts, date: Date.today)
b1.save
puts "saved booking"
