class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :movie, :list, :comment, presence: true
  validates :comment, length: { minimum: 6 }
end
