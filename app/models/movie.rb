class Movie < ApplicationRecord
  has_many :bookmarks
  has_many :lists
  # has_many :reviews, dependent: :destroy

  validates :title, uniqueness: true, presence: true
  validates :overview, uniqueness: true, presence: true
 
end
