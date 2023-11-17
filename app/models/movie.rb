class Movie < ApplicationRecord
  has_many :bookmarks

  validates :title, uniqueness: true, presence: true
  validates :overview, presence: true

  def remote_poster_url
    "https://image.tmdb.org/t/p/w500#{poster_url}"
  end
end
