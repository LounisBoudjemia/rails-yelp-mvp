# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Deleting any existing restaurants..."
Restaurant.destroy_all

Restaurant.create!(name: "Xiang Piao Piao",
  address: "Rue Davy, Paris",
  phone_number: "0836656565",
  category: "chinese")
Restaurant.create!(name: "Standard Pizza",
  address: "Templiner Straße, Berlin",
  phone_number: "03048625614",
  category: "italian")
Restaurant.create!(name: "Sushi Boubou",
  address: "Rue de Maubeuge, Paris",
  phone_number:"+33173712684",
  category: "japanese")
Restaurant.create!(name: "Les Frères Laumière",
  address: "Avenue de Laumière, Paris",
  phone_number:"",
  category: "french")
Restaurant.create!(name: "Frit Flagey",
  address: "Place Eugène Flagey, Brussels",
  phone_number:"",
  category: "belgian")

puts "Created #{Restaurant.count} restaurants"
