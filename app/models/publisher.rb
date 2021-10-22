class Publisher < ApplicationRecord
  has_many :game_publishers
  has_many :games, through: :game_publishers
end
