class User < ActiveRecord::Base
  attr_accessible :email, :games_lost, :games_won, :password_digest

  has_many :games_as_player_1, foreign_key: :player_1, class_name: 'Game'
  has_many :games_as_player_2, foreign_key: :player_2, class_name: 'Game'

has_many :moves
has_many :games

end
