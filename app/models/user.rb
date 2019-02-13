class User < ApplicationRecord
  has_secure_password

  has_many :pets
  has_many :animals, through: :pets
  has_many :posts

  def to_s
    "#{self.first_name} #{self.last_name}"
  end
end
