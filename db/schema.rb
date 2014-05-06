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

ActiveRecord::Schema.define(version: 20140506012136) do

  create_table "athletes", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token"
    t.string   "high_school"
    t.integer  "grad_year"
    t.string   "sport"
    t.string   "height"
    t.integer  "weight"
    t.integer  "sat"
    t.integer  "act"
    t.decimal  "gpa",             precision: 2, scale: 1
    t.integer  "class_rank"
  end

  add_index "athletes", ["remember_token"], name: "index_athletes_on_remember_token"

  create_table "relationships", force: true do |t|
    t.integer  "fan_id"
    t.integer  "follower_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "relationships", ["fan_id", "follower_id"], name: "index_relationships_on_fan_id_and_follower_id", unique: true
  add_index "relationships", ["fan_id"], name: "index_relationships_on_fan_id"
  add_index "relationships", ["follower_id"], name: "index_relationships_on_follower_id"

end
