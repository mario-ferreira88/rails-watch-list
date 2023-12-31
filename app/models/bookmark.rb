class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :movie_id, uniqueness: { scope: :list_id }
  validates_length_of :comment, minimum: 6, too_short: 'please enter at least 6 characters'
end
