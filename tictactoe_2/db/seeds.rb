# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.delete_all
Game.delete_all
Move.delete_all


u1 = User.create!(email: 'dorothy@tictac.com', password: 'password1', games_lost: 3, games_won: 5)
u2 = User.create!(email: 'sam@tictac.com', password: 'password2', games_lost: 3, games_won: 5)

g1 = Game.create!(game_complete: true, game_title: 'dotVssam', player_1: u1.id, player_2: u2.id)


g1.moves.create!(user_id: u1.id, symbol: 'O', cell: '0')

puts g1.build_board.inspect

g1.moves.create!(user_id: u2.id, symbol: 'X', cell: '4')

puts g1.build_board.inspect

g1.moves.create!(user_id: u1.id, symbol: 'O', cell: '1')

puts g1.build_board.inspect

g1.moves.create!(user_id: u2.id, symbol: 'X', cell: '5')

puts g1.build_board.inspect

g1.moves.create!(user_id: u1.id, symbol: 'O', cell: '2')

puts g1.build_board.inspect

puts g1.check_win?