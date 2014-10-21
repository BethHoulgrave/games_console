# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20141021083949) do

  create_table "games", :force => true do |t|
    t.string   "player_1"
    t.string   "player_2"
    t.string   "game_title"
    t.integer  "user_id"
    t.boolean  "game_complete"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "moves", :force => true do |t|
    t.string   "user"
    t.string   "cell"
    t.integer  "move_number"
    t.integer  "game_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "username"
    t.string   "password"
    t.integer  "games_won"
    t.integer  "games_lost"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end