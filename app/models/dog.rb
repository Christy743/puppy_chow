class Dog < ApplicationRecord
  belongs_to :user
  has_many :dog_foods

  validates :name, :weight, :age, presence: true
end
