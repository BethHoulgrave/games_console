class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :game_title
      t.integer :player_1
      t.integer :player_2
      t.boolean :game_complete

      t.timestamps
    end
  end
end
