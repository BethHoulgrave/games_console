class Move < ActiveRecord::Base
  attr_accessible :cell, :game_id, :move_number, :user

belongs_to :game

end
