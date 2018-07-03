class User < ApplicationRecord
  has_many :dogs, dependent: :destroy
  has_many :dog_foods, dependent: :destroy

  validates :name, presence: true
  validates :login, presence: true, uniqueness: true
end
