class User < ApplicationRecord
  has_secure_password

  has_many :pets
  has_many :animals, through: :pets
  has_many :posts

  validates :about, length: { maximum: 240 }
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true

  def to_s
    "#{self.first_name} #{self.last_name}"
  end

  def animal_count
    count = Hash.new(0)
    data = []

    self.pets.each { |pet|
      count[pet.animal.name] += 1
    }

    count.each { |animal, num|
      data << [animal, num]
    }
    data.insert(0, ['Animal', 'Count'])

    return data
  end
end
