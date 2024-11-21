class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :comment, length: { minimum: 7, message: "must be at least 6 characters long" }

  validates :movie, presence: true
  validates :list, presence: true

  validates :movie, uniqueness: { scope: :list, message: "is already added to this list" }
end
