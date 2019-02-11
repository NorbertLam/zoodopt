class Animal < ApplicationRecord
  has_many :pets
  has_many :users, through: :pets
end
