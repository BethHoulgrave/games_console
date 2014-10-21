class CreateMoves < ActiveRecord::Migration
  def change
    create_table :moves do |t|
      t.string :user
      t.string :cell
      t.integer :move_number
      t.integer :game_id

      t.timestamps
    end
  end
end
