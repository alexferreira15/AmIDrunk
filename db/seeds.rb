# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Tab.destroy_all
Drink.destroy_all
User.destroy_all
Category.destroy_all
FavouriteDrink.destroy_all
TabDrink.destroy_all

require 'open-uri'

# User(2) - email, password, username, first_name, last_name, height, weight, gender
user_one = User.create!(email: "aaa@test.com", password: "123456", username: "gostosos", first_name: "AAA", last_name: "SFS", height: 175, weight: 70, gender: "Male")
file_user_one = URI.open('https://res.cloudinary.com/dxtsuiudu/image/upload/v1669975932/user-profile-test-amidrunk_q3lnhj.webp')
user_one.photo.attach(io: file_user_one, filename: "", content_type: 'image/webp')
user_one.save!

user_two = User.create!(email: "bbb@test.com", password: "123456", username: "user2", first_name: "user", last_name: "2", height: 200, weight: 100, gender: "Female")
file_user_two = URI.open('https://res.cloudinary.com/dxtsuiudu/image/upload/v1669307789/development/xypcuchz0jxoj2q2q977uwo49isi.jpg')
user_two.photo.attach(io: file_user_two, filename: "", content_type: 'image/jpg')
user_two.save!

# Categories(5) - name
cat_one = Category.new(name: "Wines")
cat_one.save!

cat_two = Category.new(name: "Beers")
cat_two.save!

cat_three = Category.new(name: "Spirits")
cat_three.save!

cat_four = Category.new(name: "Cocktails")
cat_four.save!

cat_five = Category.new(name: "Cyders")
cat_five.save!

cat_six = Category.new(name: "Shots")
cat_six.save!

# Drinks(22) - name, alcohol, category_id, volume
drink_one = Drink.new(name: "Red Wine", alcohol: 14, category_id: 1, volume: 175)
file = URI.open('https://res.cloudinary.com/dqwh6jkno/image/upload/v1669980394/port_glass_udjal1.png')
drink_one.photo.attach(io: file, filename: "temporary-name", content_type: 'image/jpg')
drink_one.save!

drink_two = Drink.new(name: "Rose Wine", alcohol: 11, category_id: 1, volume: 175)
# file = URI.open('')
drink_two.photo.attach(io: file, filename: "", content_type: 'image/jpg')
drink_two.save!

drink_three = Drink.new(name: "White Wine", alcohol: 10, category_id: 1, volume: 175)
# file = URI.open('')
drink_three.photo.attach(io: file, filename: "", content_type: 'image/jpg')
drink_three.save!

drink_four = Drink.new(name: "Champagne", alcohol: 12, category_id: 1, volume: 125)
# file = URI.open('')
drink_four.photo.attach(io: file, filename: "", content_type: 'image/jpg')
drink_four.save!

drink_five = Drink.new(name: "Port", alcohol: 20, category_id: 1, volume: 75)
# file = URI.open('')
drink_five.photo.attach(io: file, filename: "", content_type: 'image/jpg')
drink_five.save!

drink_six = Drink.new(name: "Small Beer", alcohol: 5, category_id: 2, volume: 200)
# file = URI.open('')
drink_six.photo.attach(io: file, filename: "", content_type: 'image/jpg')
drink_six.save!

drink_seven = Drink.new(name: "Regular Beer", alcohol: 5, category_id: 2, volume: 330)
# file = URI.open('')
drink_seven.photo.attach(io: file, filename: "", content_type: 'image/jpg')
drink_seven.save!

drink_eight = Drink.new(name: "Pint", alcohol: 5, category_id: 2, volume: 500)
# file = URI.open('')
drink_eight.photo.attach(io: file, filename: "", content_type: 'image/jpg')
drink_eight.save!

drink_nine = Drink.new(name: "Craft", alcohol: 10, category_id: 2, volume: 330)
# file = URI.open('')
drink_nine.photo.attach(io: file, filename: "", content_type: 'image/jpg')
drink_nine.save!

drink_ten = Drink.new(name: "Whiskey", alcohol: 40, category_id: 3, volume: 50)
# file = URI.open('')
drink_ten.photo.attach(io: file, filename: "", content_type: 'image/jpg')
drink_ten.save!

drink_eleven = Drink.new(name: "Tequilla", alcohol: 40, category_id: 3, volume: 50)
# file = URI.open('')
drink_eleven.photo.attach(io: file, filename: "", content_type: 'image/jpg')
drink_eleven.save!

drink_twelve = Drink.new(name: "Vodka", alcohol: 40, category_id: 3, volume: 50)
# file = URI.open('')
drink_twelve.photo.attach(io: file, filename: "", content_type: 'image/jpg')
drink_twelve.save!

drink_thirteen = Drink.new(name: "Rum", alcohol: 40, category_id: 3, volume: 50)
# file = URI.open('')
drink_thirteen.photo.attach(io: file, filename: "", content_type: 'image/jpg')
drink_thirteen.save!

drink_fourteen = Drink.new(name: "Gin", alcohol: 40, category_id: 3, volume: 50)
# file = URI.open('')
drink_fourteen.photo.attach(io: file, filename: "", content_type: 'image/jpg')
drink_fourteen.save!

drink_fifteen = Drink.new(name: "Brandy", alcohol: 40, category_id: 3, volume: 50)
# file = URI.open('')
drink_fifteen.photo.attach(io: file, filename: "", content_type: 'image/jpg')
drink_fifteen.save!

drink_sixteen = Drink.new(name: "Mojito", alcohol: 13, category_id: 4, volume: 250)
# file = URI.open('')
drink_sixteen.photo.attach(io: file, filename: "", content_type: 'image/jpg')
drink_sixteen.save!

drink_seventeen = Drink.new(name: "Moscow Mule", alcohol: 13, category_id: 4, volume: 300)
# file = URI.open('')
drink_seventeen.photo.attach(io: file, filename: "", content_type: 'image/jpg')
drink_seventeen.save!

drink_eighteen = Drink.new(name: "Caipirinha", alcohol: 15, category_id: 4, volume: 250)
# file = URI.open('')
drink_eighteen.photo.attach(io: file, filename: "", content_type: 'image/jpg')
drink_eighteen.save!

drink_nineteen = Drink.new(name: "Margarita", alcohol: 30, category_id: 4, volume: 200)
# file = URI.open('')
drink_nineteen.photo.attach(io: file, filename: "", content_type: 'image/jpg')
drink_nineteen.save!

drink_twenty = Drink.new(name: "Bloody Mary", alcohol: 25, category_id: 4, volume: 200)
# file = URI.open('')
drink_twenty.photo.attach(io: file, filename: "", content_type: 'image/jpg')
drink_twenty.save!

drink_twenty_one = Drink.new(name: "Negroni", alcohol: 24, category_id: 4, volume: 200)
# file = URI.open('')
drink_twenty_one.photo.attach(io: file, filename: "", content_type: 'image/jpg')
drink_twenty_one.save!

drink_twenty_two = Drink.new(name: "Cyder", alcohol: 4, category_id: 5, volume: 330)
# file = URI.open('')
drink_twenty_two.photo.attach(io: file, filename: "", content_type: 'image/jpg')
drink_twenty_two.save!

drink_twenty_three = Drink.new(name: "Whiskey Shot", alcohol: 40, category_id: 6, volume: 50)
# file = URI.open('')
drink_twenty_three.photo.attach(io: file, filename: "", content_type: 'image/jpg')
drink_twenty_three.save!

drink_twenty_four = Drink.new(name: "Tequilla Shot", alcohol: 40, category_id: 6, volume: 50)
# file = URI.open('')
drink_twenty_four.photo.attach(io: file, filename: "", content_type: 'image/jpg')
drink_twenty_four.save!

drink_twenty_five = Drink.new(name: "Vodka Shot", alcohol: 40, category_id: 6, volume: 50)
# file = URI.open('')
drink_twenty_five.photo.attach(io: file, filename: "", content_type: 'image/jpg')
drink_twenty_five.save!

drink_twenty_six = Drink.new(name: "Rum Shot", alcohol: 40, category_id: 6, volume: 50)
# file = URI.open('')
drink_twenty_six.photo.attach(io: file, filename: "", content_type: 'image/jpg')
drink_twenty_six.save!

drink_twenty_seven = Drink.new(name: "Brandy Shot", alcohol: 40, category_id: 6, volume: 50)
# file = URI.open('')
drink_twenty_seven.photo.attach(io: file, filename: "", content_type: 'image/jpg')
drink_twenty_seven.save!
