class Review < ApplicationRecord
  belongs_to :list
  has_many :movies, through: :bookmarks
  validates :comment, presence: true
  validates :rating, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 10 }
end
