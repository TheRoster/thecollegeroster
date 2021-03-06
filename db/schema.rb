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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140517202145) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "athletes", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.integer  "high_school_id"
    t.integer  "sport_id"
    t.integer  "position_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token"
    t.integer  "grad_year"
    t.string   "height"
    t.integer  "weight"
    t.integer  "sat"
    t.integer  "act"
    t.decimal  "gpa",                 precision: 2, scale: 1
    t.integer  "class_rank"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  add_index "athletes", ["high_school_id"], name: "index_athletes_on_high_school_id", using: :btree
  add_index "athletes", ["position_id"], name: "index_athletes_on_position_id", using: :btree
  add_index "athletes", ["remember_token"], name: "index_athletes_on_remember_token", using: :btree
  add_index "athletes", ["sport_id"], name: "index_athletes_on_sport_id", using: :btree

  create_table "high_schools", force: true do |t|
    t.string  "name"
    t.string  "phone"
    t.string  "address"
    t.string  "city"
    t.string  "state"
    t.string  "zip"
    t.decimal "latitude"
    t.decimal "longitude"
    t.string  "county"
  end

  create_table "positions", force: true do |t|
    t.string   "name"
    t.integer  "sport_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "positions", ["sport_id"], name: "index_positions_on_sport_id", using: :btree

  create_table "relationships", force: true do |t|
    t.integer  "fan_id"
    t.integer  "follow_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "relationships", ["fan_id", "follow_id"], name: "index_relationships_on_fan_id_and_follow_id", unique: true, using: :btree
  add_index "relationships", ["fan_id"], name: "index_relationships_on_fan_id", using: :btree
  add_index "relationships", ["follow_id"], name: "index_relationships_on_follow_id", using: :btree

  create_table "sports", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stats", force: true do |t|
    t.integer  "points"
    t.integer  "rebounds"
    t.integer  "assists"
    t.integer  "steals"
    t.integer  "blocks"
    t.integer  "turnovers"
    t.integer  "minutes_played"
    t.date     "date_played"
    t.integer  "athlete_id"
    t.integer  "sport_id"
    t.integer  "position_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "stats", ["athlete_id"], name: "index_stats_on_athlete_id", using: :btree
  add_index "stats", ["position_id"], name: "index_stats_on_position_id", using: :btree
  add_index "stats", ["sport_id"], name: "index_stats_on_sport_id", using: :btree

end
