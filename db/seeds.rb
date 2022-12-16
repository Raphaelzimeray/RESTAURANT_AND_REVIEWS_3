# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"

puts "cleaning database..."


Review.destroy_all

Restaurant.destroy_all

puts "Creating 5 restaurants..."


mcdo = Restaurant.new(
  name: "McDo Champs Elysees",
  address: "7 rue Beaujon, 75008, Paris"
)

file = URI.open("https://live.staticflickr.com/6051/6259056571_4abd429fca_b.jpg")
mcdo.photo.attach(io: file, filename: "mcdo.jpg", content_type: "mcdo/jpg")

mcdo.save!

puts "#{mcdo.name} has been created!"

grandvefour = Restaurant.new(
  name: "Le grand véfour",
  address: "17 Rue de Beaujolais, 75001 Paris"
)
file = URI.open("https://monparisjoli.com/wp-content/uploads/2016/01/328784_327820443908674_520713873_o-1024x681.jpg")
grandvefour.photo.attach(io: file, filename: "grvefour.jpg", content_type: "grvefour/jpg")

grandvefour.save!

puts "#{grandvefour.name} has been created!"

hippopotamus = Restaurant.new(
  name: "Hipopotamus Steakhouse",
  address: "46 Av. de Wagram, 75008 Paris"
)
file = URI.open("https://d1ralsognjng37.cloudfront.net/d2ac752e-9928-48c7-8df5-e5c0cc09674d.jpeg")
hippopotamus.photo.attach(io: file, filename: "hippopotamus.jpeg", content_type: "hippopotamus/jpeg")

hippopotamus.save!

puts "#{hippopotamus.name} has been created!"
