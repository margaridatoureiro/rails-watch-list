class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :comment, length: { minimum: 6 }
  validates :movie, uniqueness: { scope: :list } # we can switch the order -> ask them to google unique pairings rails validation
  # validates :movie_id, uniqueness: { scope: :list_id, message: "is already in the list" }
end
