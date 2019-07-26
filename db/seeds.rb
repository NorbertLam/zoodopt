panda = "https://live.staticflickr.com/8279/15596874808_cd0806c732_b.jpg"
dog = "https://farm5.staticflickr.com/4034/4582991692_d35aaf3162_b.jpg"
cat = "https://c2.staticflickr.com/8/7525/16316696022_61870a3f41_h.jpg"
bird = "https://c1.staticflickr.com/9/8457/8049996428_b53f6c5234_b.jpg"
fish = "https://c1.staticflickr.com/7/6141/6011268140_968cd502e6_b.jpg"
snake = "https://c1.staticflickr.com/6/5064/5633055117_d3e44ea40f_b.jpg"
whale = "https://www.dolphin-star.com/wp-content/uploads/2017/08/Killer-Whale-Photo.jpg"
elephant = "https://c1.staticflickr.com/8/7391/11330864553_82160a8f8d_h.jpg"
otter = "https://c1.staticflickr.com/5/4084/5067704461_8fba71859f_b.jpg"

User.create(first_name: "Sarah",
            last_name: "Doe",
            email: "SarahDoe@email.com".downcase,
            password: "password1",
            profile_image: "https://s3-us-west-2.amazonaws.com/s.cdpn.io/331810/sq-sample4.jpg",
            about: "Here is an about me. I like animals!"
  )

  User.create(first_name: "Emma",
            last_name: "Watson",
            email: "emma@email.com".downcase,
            password: "password1",
            profile_image: "https://imagesvc.timeincapp.com/v3/mm/image?url=https%3A%2F%2Ftimedotcom.files.wordpress.com%2F2015%2F12%2Fgettyimages-485360238.jpg",
            about: "I like animals!"
  )

Animal.create(name: "Dog", endangered: false, image_url: dog)
Animal.create(name: "Cat", endangered: false, image_url: cat)
Animal.create(name: "Bird", endangered: false, image_url: bird)
Animal.create(name: "Fish", endangered: false, image_url: fish)
Animal.create(name: "Panda", endangered: true, image_url: panda)
Animal.create(name: "Snake", endangered: false, image_url: snake)
Animal.create(name: "Whale", endangered: true, image_url: whale)
Animal.create(name: "Elephant", endangered: true, image_url: elephant)
Animal.create(name: "Otter", endangered: false, image_url: otter)


File.open("urls/dogs.txt").each do |line|
  Pet.create!(name: Faker::Dog.name, gender: Faker::Dog.gender, weight: Faker::Dog.size, animal_id: 1, adopted: false, image_url: line)
end

File.open("urls/cats.txt").each do |line|
  Pet.create!(name: Faker::Cat.name, gender: Faker::Dog.gender, weight: Faker::Dog.size, animal_id: 2, adopted: false, image_url: line)
end

File.open("urls/fishes.txt").each do |line|
  Pet.create!(name: Faker::Name.first_name, gender: Faker::Dog.gender, weight: Faker::Dog.size, animal_id: Animal.find_by(name: "Fish").id, adopted: false, image_url: line)
end

File.open("urls/pandas.txt").each do |line|
  Pet.create!(name: Faker::Dog.name, gender: Faker::Dog.gender, weight: Faker::Dog.size, animal_id: Animal.find_by(name: "Panda").id, adopted: false, image_url: line)
end

File.open("urls/snakes.txt").each do |line|
  Pet.create!(name: Faker::Name.first_name, gender: Faker::Dog.gender, weight: Faker::Dog.size, animal_id: Animal.find_by(name: "Snake").id, adopted: false, image_url: line)
end

File.open("urls/whales.txt").each do |line|
  Pet.create!(name: Faker::Name.first_name, gender: Faker::Dog.gender, weight: Faker::Dog.size, animal_id: Animal.find_by(name: "Whale").id, adopted: false, image_url: line)
end

File.open("urls/elephants.txt").each do |line|
  Pet.create!(name: Faker::Name.first_name, gender: Faker::Dog.gender, weight: Faker::Dog.size, animal_id: Animal.find_by(name: "Elephant").id, adopted: false, image_url: line)
end

File.open("urls/otters.txt").each do |line|
  Pet.create!(name: Faker::Name.first_name, gender: Faker::Dog.gender, weight: Faker::Dog.size, animal_id: Animal.find_by(name: "Otter").id, adopted: false, image_url: line)
end

File.open("urls/birds.txt").each do |line|
  Pet.create!(name: Faker::Name.first_name, gender: Faker::Dog.gender, weight: Faker::Dog.size, animal_id: Animal.find_by(name: "Bird").id, adopted: false, image_url: line)
end



