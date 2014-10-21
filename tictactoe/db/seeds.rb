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


u1 = User.create!(email: 'dorothy@tictac.com', password: 'password1', username: 'dorothyparker', games_lost: 3, games_won: 5)


g1 = Game.create!(game_complete: true, game_title: 'dotVssam', player_1: 'dorothyparker', player_2: 'samstone')


m1 = Move.create!(user: 'dorothyparker', move_number: 1, cell: 'a1')







