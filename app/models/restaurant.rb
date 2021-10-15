class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  CATEGORIES = %w[chinese italian japanese french belgian].freeze
  validates :category, inclusion: { in: CATEGORIES }
end
