# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# 1. Clean the database
puts "Cleaning database..."
Restaurant.destroy_all if Rails.env.development? # clears only data from the development database

# 2. Create the instances
puts "Creating restaurants..."
Restaurant.create!(name: "Little Dumpling", address: "Cologne", phone_number: "0123456789", category: "chinese")
puts "Created 'Little Dumpling'"
Restaurant.create!(name: "Fries before guys", address: "Bruges", category: "belgian")
puts "Created 'Fries before guys'"
Restaurant.create!(name: "Luna Rossa", address: "Milan", phone_number: "0987654321", category: "italian")
puts "Created 'Luna Rossa'"
Restaurant.create!(name: "Katsu", address: "Tokio", category: "japanese")
puts "Created 'Katsu'"
Restaurant.create!(name: "Fromages du monde", address: "Bordeaux", category: "french")
puts "Created 'Fromages du monde'"

# 3. Display confirmation message
puts "All done! Created #{Restaurant.count} restaurants."
