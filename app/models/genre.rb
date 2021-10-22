class Genre < ApplicationRecord
  has_many :game_genres
  has_many :games, through: :game_genres

  validates :genre_name, presence: true
end
