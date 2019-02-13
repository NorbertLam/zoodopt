class Pet < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :animal
  has_many :posts
end
