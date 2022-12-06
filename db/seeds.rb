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
user_one = User.create!(email: "as@lewagon.com", password: "123456", username: "andre94", first_name: "André", last_name: "Sardinha", height: 180, weight: 70, gender: "Male")
file_user_one = URI.open('https://res.cloudinary.com/dqwh6jkno/image/upload/v1669897823/development/1o6yew5n39g4vu733qi8wu1pwk4y.jpg')
user_one.photo.attach(io: file_user_one, filename: "user photo", content_type: 'image/jpg')
user_one.save!

user_two = User.create!(email: "test@test.com", password: "123456", username: "testprofile", first_name: "test", last_name: "profile", height: 200, weight: 100, gender: "Female")
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

# Drinks(32) - name, alcohol, category_id, volume
drink_one = Drink.new(name: "Red Wine", alcohol: 14, category_id: 1, volume: 175)
file = URI.open('https://res.cloudinary.com/dqwh6jkno/image/upload/v1670314505/Red_Wine_agpsoz.png')
drink_one.photo.attach(io: file, filename: "", content_type: 'image/png')
drink_one.save!

drink_two = Drink.new(name: "Rosé Wine", alcohol: 11, category_id: 1, volume: 175)
file = URI.open('https://res.cloudinary.com/dqwh6jkno/image/upload/v1670314505/Ros%C3%A9_Wine_an0ryr.png')
drink_two.photo.attach(io: file, filename: "", content_type: 'image/png')
drink_two.save!

drink_three = Drink.new(name: "White Wine", alcohol: 10, category_id: 1, volume: 175)
file = URI.open('https://res.cloudinary.com/dqwh6jkno/image/upload/v1670315193/development/ocxgle55s4b60z2zjsu2k7li5ol1.png')
drink_three.photo.attach(io: file, filename: "", content_type: 'image/png')
drink_three.save!

drink_four = Drink.new(name: "Champagne", alcohol: 12, category_id: 1, volume: 125)
file = URI.open('https://res.cloudinary.com/dqwh6jkno/image/upload/v1670314504/Champagne_tv3xyt.png')
drink_four.photo.attach(io: file, filename: "", content_type: 'image/png')
drink_four.save!

drink_five = Drink.new(name: "Port", alcohol: 20, category_id: 1, volume: 75)
file = URI.open('https://res.cloudinary.com/dqwh6jkno/image/upload/v1670314505/Port_Wine_mkh4kw.png')
drink_five.photo.attach(io: file, filename: "", content_type: 'image/png')
drink_five.save!

drink_six = Drink.new(name: "Small Beer", alcohol: 5, category_id: 2, volume: 200)
file = URI.open('https://res.cloudinary.com/dqwh6jkno/image/upload/v1670314506/Small_Beer_pwosxy.png')
drink_six.photo.attach(io: file, filename: "", content_type: 'image/png')
drink_six.save!

drink_seven = Drink.new(name: "Regular Beer", alcohol: 5, category_id: 2, volume: 330)
file = URI.open('https://res.cloudinary.com/dqwh6jkno/image/upload/v1670314505/Regular_Beer_nxksfi.png')
drink_seven.photo.attach(io: file, filename: "", content_type: 'image/png')
drink_seven.save!

drink_eight = Drink.new(name: "Pint of Beer", alcohol: 5, category_id: 2, volume: 500)
file = URI.open('https://res.cloudinary.com/dqwh6jkno/image/upload/v1670314505/Pint_Cerveja_clsl91.png')
drink_eight.photo.attach(io: file, filename: "", content_type: 'image/png')
drink_eight.save!

drink_nine = Drink.new(name: "Craft", alcohol: 10, category_id: 2, volume: 330)
file = URI.open('https://res.cloudinary.com/dqwh6jkno/image/upload/v1670314504/Craft_Beer_snxbuc.png')
drink_nine.photo.attach(io: file, filename: "", content_type: 'image/png')
drink_nine.save!

drink_ten = Drink.new(name: "Whiskey", alcohol: 40, category_id: 3, volume: 50)
file = URI.open('https://res.cloudinary.com/dqwh6jkno/image/upload/v1670314506/Whisky_d6r0uq.png')
drink_ten.photo.attach(io: file, filename: "", content_type: 'image/png')
drink_ten.save!

drink_eleven = Drink.new(name: "Rum", alcohol: 40, category_id: 3, volume: 50)
file = URI.open('https://res.cloudinary.com/dqwh6jkno/image/upload/v1670315202/development/tut68kc82tbc3gk7hugts2ochlpv.png')
drink_eleven.photo.attach(io: file, filename: "", content_type: 'image/png')
drink_eleven.save!

drink_twelve = Drink.new(name: "Tequila", alcohol: 40, category_id: 3, volume: 50)
file = URI.open('https://res.cloudinary.com/dqwh6jkno/image/upload/v1670314506/Shot_Tequilla_avgebu.png')
drink_twelve.photo.attach(io: file, filename: "", content_type: 'image/png')
drink_twelve.save!

drink_thirteen = Drink.new(name: "Vodka", alcohol: 40, category_id: 3, volume: 50)
file = URI.open('https://res.cloudinary.com/dqwh6jkno/image/upload/v1670314506/Shot_Vodka_gufour.png')
drink_thirteen.photo.attach(io: file, filename: "", content_type: 'image/png')
drink_thirteen.save!

drink_fourteen = Drink.new(name: "Brandy", alcohol: 40, category_id: 3, volume: 50)
file = URI.open('https://res.cloudinary.com/dqwh6jkno/image/upload/v1670314504/Brandy_w2mu4g.png')
drink_fourteen.photo.attach(io: file, filename: "", content_type: 'image/png')
drink_fourteen.save!

drink_fifteen = Drink.new(name: "Vermute", alcohol: 15, category_id: 3, volume: 60)
file = URI.open('https://res.cloudinary.com/dqwh6jkno/image/upload/v1670314506/Vermute_k6d7cw.png')
drink_fifteen.photo.attach(io: file, filename: "", content_type: 'image/png')
drink_fifteen.save!

drink_sixteen = Drink.new(name: "Rum&Coke", alcohol: 12, category_id: 4, volume: 250)
file = URI.open('https://res.cloudinary.com/dqwh6jkno/image/upload/v1670314504/Cuba_Libre_fmv8k8.png')
drink_sixteen.photo.attach(io: file, filename: "", content_type: 'image/png')
drink_sixteen.save!

drink_seventeen = Drink.new(name: "Vodka&Juice", alcohol: 12, category_id: 4, volume: 250)
file = URI.open('https://res.cloudinary.com/dqwh6jkno/image/upload/v1670314504/Gin_Tonic_cainn2.png')
drink_seventeen.photo.attach(io: file, filename: "", content_type: 'image/png')
drink_seventeen.save!

drink_eighteen = Drink.new(name: "Gin&Tonic", alcohol: 13, category_id: 4, volume: 250)
file = URI.open('https://res.cloudinary.com/dqwh6jkno/image/upload/v1670314504/Gin_Tonic_cainn2.png')
drink_eighteen.photo.attach(io: file, filename: "", content_type: 'image/png')
drink_eighteen.save!

drink_nineteen = Drink.new(name: "Moskow", alcohol: 11, category_id: 4, volume: 250)
file = URI.open('https://res.cloudinary.com/dqwh6jkno/image/upload/v1670314504/Moskow_Mule_wnsdm6.png')
drink_nineteen.photo.attach(io: file, filename: "", content_type: 'image/png')
drink_nineteen.save!

drink_twenty = Drink.new(name: "Mojito", alcohol: 13, category_id: 4, volume: 250)
file = URI.open('https://res.cloudinary.com/dqwh6jkno/image/upload/v1670314505/Mojito_xswhtp.png')
drink_twenty.photo.attach(io: file, filename: "", content_type: 'image/png')
drink_twenty.save!

drink_twenty_one = Drink.new(name: "Caipirinha", alcohol: 15, category_id: 4, volume: 250)
file = URI.open('https://res.cloudinary.com/dqwh6jkno/image/upload/v1670319417/Capirinha_setesy.png')
drink_twenty_one.photo.attach(io: file, filename: "", content_type: 'image/png')
drink_twenty_one.save!

drink_twenty_two = Drink.new(name: "Margarita", alcohol: 30, category_id: 4, volume: 200)
file = URI.open('https://res.cloudinary.com/dqwh6jkno/image/upload/v1670314505/Marguerita_nf1csm.png')
drink_twenty_two.photo.attach(io: file, filename: "", content_type: 'image/png')
drink_twenty_two.save!

drink_twenty_three = Drink.new(name: "Bloody Mary", alcohol: 25, category_id: 4, volume: 200)
file = URI.open('https://res.cloudinary.com/dqwh6jkno/image/upload/v1670314504/Bloody_Mary_sfbepl.png')
drink_twenty_three.photo.attach(io: file, filename: "", content_type: 'image/png')
drink_twenty_three.save!

drink_twenty_four = Drink.new(name: "Negroni", alcohol: 24, category_id: 4, volume: 200)
file = URI.open('https://res.cloudinary.com/dqwh6jkno/image/upload/v1670314504/Negroni_qhdpab.png')
drink_twenty_four.photo.attach(io: file, filename: "", content_type: 'image/png')
drink_twenty_four.save!

drink_twenty_five = Drink.new(name: "Small Cyder", alcohol: 4, category_id: 5, volume: 200)
file = URI.open('https://res.cloudinary.com/dqwh6jkno/image/upload/v1670314504/Cyder_ncoqml.png')
drink_twenty_five.photo.attach(io: file, filename: "", content_type: 'image/png')
drink_twenty_five.save!

drink_twenty_six = Drink.new(name: "Regular Cyder", alcohol: 4, category_id: 5, volume: 330)
file = URI.open('https://res.cloudinary.com/dqwh6jkno/image/upload/v1670314505/Regular_Cyder_qunwyv.png')
drink_twenty_six.photo.attach(io: file, filename: "", content_type: 'image/png')
drink_twenty_six.save!

drink_twenty_seven = Drink.new(name: "Pint of Cyder", alcohol: 4, category_id: 5, volume: 500)
file = URI.open('https://res.cloudinary.com/dqwh6jkno/image/upload/v1670314505/Pint_Cyder_xfotri.png')
drink_twenty_seven.photo.attach(io: file, filename: "", content_type: 'image/png')
drink_twenty_seven.save!

drink_twenty_eight = Drink.new(name: "Whisky Shot", alcohol: 40, category_id: 6, volume: 50)
file = URI.open('https://res.cloudinary.com/dqwh6jkno/image/upload/v1670314506/Shot_Wisky_ktn6mv.png')
drink_twenty_eight.photo.attach(io: file, filename: "", content_type: 'image/png')
drink_twenty_eight.save!

drink_twenty_nine = Drink.new(name: "Tequilla Shot", alcohol: 40, category_id: 6, volume: 50)
file = URI.open('https://res.cloudinary.com/dqwh6jkno/image/upload/v1670314506/Shot_Tequilla_avgebu.png')
drink_twenty_nine.photo.attach(io: file, filename: "", content_type: 'image/png')
drink_twenty_nine.save!

drink_thirty = Drink.new(name: "Vodka Shot", alcohol: 40, category_id: 6, volume: 50)
file = URI.open('https://res.cloudinary.com/dqwh6jkno/image/upload/v1670314506/Shot_Vodka_gufour.png')
drink_thirty.photo.attach(io: file, filename: "", content_type: 'image/png')
drink_thirty.save!

drink_thirty_one = Drink.new(name: "Rum Shot", alcohol: 40, category_id: 6, volume: 50)
file = URI.open('https://res.cloudinary.com/dqwh6jkno/image/upload/v1670314506/Shot_Rum_txeb4o.png')
drink_thirty_one.photo.attach(io: file, filename: "", content_type: 'image/png')
drink_thirty_one.save!

drink_thirty_two = Drink.new(name: "Brandy Shot", alcohol: 40, category_id: 6, volume: 50)
file = URI.open('https://res.cloudinary.com/dqwh6jkno/image/upload/v1670314506/Shot_Brandy_kafmrp.png')
drink_thirty_two.photo.attach(io: file, filename: "", content_type: 'image/png')
drink_thirty_two.save!
