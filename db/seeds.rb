# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Kitten.create!(
  [
    { name: "Whiskers", age: 3, cuteness: 9, softness: 8 },
    { name: "Fluffy", age: 2, cuteness: 10, softness: 9 },
    { name: "Mittens", age: 1, cuteness: 9, softness: 7 },
    { name: "Shadow", age: 4, cuteness: 9, softness: 6 },
    { name: "Tiger", age: 2, cuteness: 9, softness: 8 },
    { name: "Luna", age: 1, cuteness: 10, softness: 10 },
    { name: "Simba", age: 3, cuteness: 9, softness: 9 },
    { name: "Oreo", age: 2, cuteness: 10, softness: 9 },
    { name: "Bella", age: 3, cuteness: 9, softness: 8 },
    { name: "Coco", age: 1, cuteness: 9, softness: 7 },
    { name: "Max", age: 4, cuteness: 9, softness: 6 },
    { name: "Milo", age: 2, cuteness: 9, softness: 9 },
    { name: "Chloe", age: 3, cuteness: 10, softness: 10 },
    { name: "Oliver", age: 1, cuteness: 9, softness: 8 },
    { name: "Sassy", age: 2, cuteness: 9, softness: 7 },
    { name: "Pumpkin", age: 3, cuteness: 9, softness: 9 },
    { name: "Zoe", age: 4, cuteness: 10, softness: 9 },
    { name: "Smokey", age: 2, cuteness: 9, softness: 6 },
    { name: "Daisy", age: 1, cuteness: 10, softness: 9 },
    { name: "Lucky", age: 3, cuteness: 9, softness: 8 }
  ]
)

puts "Create #{Kitten.count} kittens"
