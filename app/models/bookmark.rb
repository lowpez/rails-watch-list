class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :comment, length: { minimum: 6 }

  # validates :movie, uniqueness: { scope: :list } #is unique for a given movie/list couple

  validates :movie_id, uniqueness: { scope: :list_id, message: "is already in the list" }

end
