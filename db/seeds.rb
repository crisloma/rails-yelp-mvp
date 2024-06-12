# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Removing restaurants..."
Restaurant.destroy_all
puts "Restaurants removed!!!"
puts "Creating new restaurants..."

tour_d_argent = Restaurant.new(name: "La Tour d'Argent", address: "Palermo 958", phone_number: "462829373", category: "french")
tour_d_argent.save!

chez_gladines = Restaurant.new(name: "Chez Gladines", address: "Obrajes 958", phone_number: "12323433", category: "italian")
chez_gladines.save!

la_toscana = Restaurant.new(name: "La Toscana", address: "Alvear 958", phone_number: "332323433", category: "chinese")
la_toscana.save!

fries_chichita = Restaurant.new(name: "Fries Chichita", address: "Gorriti 958", phone_number: "532323433", category: "belgian")
fries_chichita.save!

happy_ramen = Restaurant.new(name: "Happy Ramen", address: "Azurduy 658", phone_number: "632323433", category: "japanese")
happy_ramen.save!

puts "Bingo!!!"
