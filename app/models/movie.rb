class Movie < ApplicationRecord
  has_many :bookmarks
  has_many :lists, through: :bookmarks # joint table
  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true
end
