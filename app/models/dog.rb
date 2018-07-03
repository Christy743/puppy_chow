class Dog < ApplicationRecord
  belongs_to :user
  has_many :dog_foods
end
