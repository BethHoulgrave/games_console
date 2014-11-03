class User < ActiveRecord::Base
  has_secure_password
  attr_accessible :email, :games_lost, :games_won, :password, :password_confirmation

  has_many :games_as_player_1, foreign_key: :player_1, class_name: 'Game'
  has_many :games_as_player_2, foreign_key: :player_2, class_name: 'Game'

has_many :moves
has_many :games

# validates :password, presence: true, on: :create
  validates :email, presence: true
  validates :email, uniqueness: { case_sensitive: false }

  def role?(role_to_compare)
      self.role.to_s == role_to_compare.to_s
    end
  
end
