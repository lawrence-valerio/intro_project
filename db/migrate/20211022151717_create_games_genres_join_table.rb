class CreateGamesGenresJoinTable < ActiveRecord::Migration[6.1]
  def change
    create_join_table :games, :genres

    create_join_table :games, :genres do |t|
      t.index :games_id
      t.index :genres_id
    end
  end
end
