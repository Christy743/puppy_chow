class DogFood < ApplicationRecord
  belongs_to :user
  belongs_to :dog
end
