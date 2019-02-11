# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Animal.create(name: "Dog", endangered: false)
Animal.create(name: "Cat", endangered: false)

File.open("dogs.txt").each do |line|
  Pet.create!(name: Faker::Dog.name, gender: Faker::Dog.gender, weight: Faker::Dog.size, animal_id: 1, image_url: line)
end

File.open("cats.txt").each do |line|
  Pet.create!(name: Faker::Cat.name, gender: Faker::Dog.gender, weight: Faker::Dog.size, animal_id: 2, image_url: line)
end
