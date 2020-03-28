# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_03_28_142612) do

  create_table "games", force: :cascade do |t|
    t.string "url", null: false
    t.integer "dice_start", null: false
    t.boolean "has_started"
    t.boolean "has_ended"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "ping"
  end

  create_table "players", force: :cascade do |t|
    t.string "name", null: false
    t.integer "game_id", null: false
    t.integer "number_dice"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "order"
    t.string "current_hand"
    t.index ["game_id"], name: "index_players_on_game_id"
  end

  add_foreign_key "players", "games"
end
