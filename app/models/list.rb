class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
  has_many :reviews

  validates :name, uniqueness: true, presence: true
  has_one_attached :photo

  # validates :photo, format: {
  # with: %r{\.(png|jpg|jpeg)\Z}i,
  # message: 'must be a url for gif, jpg, or png image.'
  # }

end
