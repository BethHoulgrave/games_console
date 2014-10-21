class User < ActiveRecord::Base
  attr_accessible :email, :games_lost, :games_won, :password, :username

has_many :moves, through: :games
has_many :games

end
