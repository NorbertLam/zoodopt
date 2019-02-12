
Animal.create(name: "Dog", endangered: false)
Animal.create(name: "Cat", endangered: false)
Animal.create(name: "Bird", endangered: false)
Animal.create(name: "Fish", endangered: false)
Animal.create(name: "Panda", endangered: false)
Animal.create(name: "Turtle", endangered: false)
Animal.create(name: "Alligator", endangered: false)
Animal.create(name: "Snake", endangered: false)
Animal.create(name: "Lizard", endangered: false)

File.open("dogs.txt").each do |line|
  Pet.create!(name: Faker::Dog.name, gender: Faker::Dog.gender, weight: Faker::Dog.size, animal_id: 1, adopted: false, image_url: line)
end

File.open("cats.txt").each do |line|
  Pet.create!(name: Faker::Cat.name, gender: Faker::Dog.gender, weight: Faker::Dog.size, animal_id: 2, adopted: false, image_url: line)
end

File.open("fishes.txt").each do |line|
  Pet.create!(name: Faker::Dog.name, gender: Faker::Dog.gender, weight: Faker::Dog.size, animal_id: Animal.find_by(name: "Fish").id, adopted: false, image_url: line)
end

File.open("panda.txt").each do |line|
  Pet.create!(name: Faker::Dog.name, gender: Faker::Dog.gender, weight: Faker::Dog.size, animal_id: Animal.find_by(name: "Panda").id, adopted: false, image_url: line)
end


