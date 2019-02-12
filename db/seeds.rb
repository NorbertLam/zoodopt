panda = "https://scontent-lga3-1.cdninstagram.com/vp/3f1d7490279b2b41fc282bbb8c3f7588/5CEDA3C8/t51.2885-15/e35/49531835_2150946808299808_8133279009195066812_n.jpg?_nc_ht=scontent-lga3-1.cdninstagram.com"
dog = "https://farm5.staticflickr.com/4034/4582991692_d35aaf3162_b.jpg"
cat = "https://c2.staticflickr.com/8/7525/16316696022_61870a3f41_h.jpg"
bird = "https://c1.staticflickr.com/9/8457/8049996428_b53f6c5234_b.jpg"
fish = "https://c1.staticflickr.com/7/6141/6011268140_968cd502e6_b.jpg"
snake = "https://c1.staticflickr.com/6/5064/5633055117_d3e44ea40f_b.jpg"
whale = "https://www.dolphin-star.com/wp-content/uploads/2017/08/Killer-Whale-Photo.jpg"
elephant = "https://c1.staticflickr.com/8/7391/11330864553_82160a8f8d_h.jpg"
otter = "https://c1.staticflickr.com/5/4084/5067704461_8fba71859f_b.jpg"

Animal.create(name: "Dog", endangered: false, image_url: dog)
Animal.create(name: "Cat", endangered: false, image_url: cat)
Animal.create(name: "Bird", endangered: false, image_url: bird)
Animal.create(name: "Fish", endangered: false, image_url: fish)
Animal.create(name: "Panda", endangered: true, image_url: panda)
Animal.create(name: "Snake", endangered: false, image_url: snake)
Animal.create(name: "Whale", endangered: true, image_url: whale)
Animal.create(name: "Elephant", endangered: true, image_url: elephant)
Animal.create(name: "Otter", endangered: false, image_url: otter)


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


