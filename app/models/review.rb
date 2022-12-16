class Review < ApplicationRecord
  belongs_to :restaurant
  belongs_to :user
  validates :rating, presence: true, numericality: { in: 1..5 }
  validates :comment, presence: true
  NUMBER_RATING = [1, 2, 3, 4, 5]
end
