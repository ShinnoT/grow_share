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



seller = User.create(email: "bobo@bobo.com", first_name:"Bo", last_name:"Bi", password: 'password',address: "tokyo") #u1
buyer = User.create(email: "coco@coco.com", first_name:"Co", last_name:"Ci", password: 'password',address: "tokyo")

bananas = Item.new(name: "banana", good_until: Date.today, category: "vegetable", quantity: 100, indicator: "kg")
coconuts = Item.new(name: "coconut", good_until: Date.today, category: "fruit", quantity: 100, indicator: "kg")
cherries = Item.new(name: "cherries", good_until: Date.today, category: "vegetable", quantity: 100, indicator: "kg")
cabbage = Item.new(name: "cabbage", good_until: Date.today, category: "fruit", quantity: 100, indicator: "kg")
couliflower = Item.new(name: "couliflower", good_until: Date.today, category: "vegetable", quantity: 100, indicator: "kg")
durian = Item.new(name: "durian", good_until: Date.today, category: "fruit", quantity: 100, indicator: "kg")
pinneaples = Item.new(name: "pinneaple", good_until: Date.today, category: "vegetable", quantity: 100, indicator: "kg")
ginger = Item.new(name: "ginger", good_until: Date.today, category: "fruit", quantity: 100, indicator: "kg")
apples = Item.new(name: "apples", good_until: Date.today, category: "vegetable", quantity: 100, indicator: "kg")


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
