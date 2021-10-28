class Game < ApplicationRecord
  has_many :game_genres
  has_many :genres, through: :game_genres

  has_many :game_publishers
  has_many :publishers, through: :game_publishers

  validates :title, :description, :release_date, :platform, presence: true

  paginates_per 16
end
