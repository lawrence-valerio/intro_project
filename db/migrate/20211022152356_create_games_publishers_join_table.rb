class CreateGamesPublishersJoinTable < ActiveRecord::Migration[6.1]
  def change
    create_join_table :games, :publishers

    create_join_table :games, :publishers do |t|
      t.index :games_id
      t.index :publishers_id
    end
  end
end
