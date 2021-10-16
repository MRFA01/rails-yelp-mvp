class Review < ApplicationRecord
  belongs_to :restaurant
  validates :rating, numericality: { greater_than: 0 }
  validates :rating, numericality: { less_than: 6 }
  validates :content, presence: true
end
