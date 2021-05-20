class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks # joint table
  # has_many :reviews

  validates :name, uniqueness: true, presence: true
end
