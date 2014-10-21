class Move < ActiveRecord::Base
  attr_accessible :game_id, :symbol, :user_id, :cell

  belongs_to :game

end
