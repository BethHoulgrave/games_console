class Game < ActiveRecord::Base
  attr_accessible :game_complete, :game_title, :player_1, :player_2, :user_id

  belongs_to :user
  has_many :moves
  
end
