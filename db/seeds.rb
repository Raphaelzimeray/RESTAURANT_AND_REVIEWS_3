# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



Restaurant.destroy_all

puts "Creating 5 restaurants..."


mcdo = Restaurant.new(
  name: "McDo Champs Elysees",
  address: "7 rue Beaujon, 75008, Paris"
)

mcdo.save!

puts "#{mcdo.name} has been created!"

grandvefour = Restaurant.new(
  name: "Le grand véfour",
  address: "17 Rue de Beaujolais, 75001 Paris"
)

grandvefour.save!

puts "#{grandvefour.name} has been created!"

hippopotamus = Restaurant.new(
  name: "Hipopotamus Steakhouse",
  address: "46 Av. de Wagram, 75008 Paris"
)

hippopotamus.save!

puts "#{hippopotamus.name} has been created!"


