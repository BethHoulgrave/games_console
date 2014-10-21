class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :player_1
      t.string :player_2
      t.string :game_title
      t.integer :user_id
      t.boolean :game_complete

      t.timestamps
    end
  end
end
