class User < ApplicationRecord
  has_many :dogs, dependent: :destroy
  has_many :dog_foods, dependent: :destroy
end
