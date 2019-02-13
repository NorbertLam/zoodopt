class User < ApplicationRecord
  has_secure_password

  has_many :pets
  has_many :animals, through: :pets

  def to_s
    "#{self.first_name} #{self.last_name}"
  end

  def animal_count
    count = Hash.new(0)

    self.pets.each { |pet|
      count[pet.animal.name] += 1
    }

    return count
  end
end
