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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160923172621) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "match_ups", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "matchups", force: :cascade do |t|
    t.integer "winner_id"
    t.integer "loser_id"
    t.integer "home_team_id"
    t.integer "away_team_id"
    t.index ["away_team_id"], name: "index_matchups_on_away_team_id", using: :btree
    t.index ["home_team_id"], name: "index_matchups_on_home_team_id", using: :btree
    t.index ["loser_id"], name: "index_matchups_on_loser_id", using: :btree
    t.index ["winner_id"], name: "index_matchups_on_winner_id", using: :btree
  end

  create_table "teams", force: :cascade do |t|
    t.string   "name"
    t.string   "alias"
    t.string   "palette"
    t.string   "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_hash"
    t.integer  "subtotal"
    t.integer  "total"
    t.integer  "team_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.boolean  "admin"
    t.index ["team_id"], name: "index_users_on_team_id", using: :btree
  end

  add_foreign_key "users", "teams"
end
