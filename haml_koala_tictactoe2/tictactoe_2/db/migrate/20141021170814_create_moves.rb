class CreateMoves < ActiveRecord::Migration
  def change
    create_table :moves do |t|
      t.integer :user_id
      t.string :symbol
      t.integer :game_id
      t.integer :cell

      t.timestamps
    end
  end
end
