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

ActiveRecord::Schema.define(version: 2019_09_09_050006) do

  create_table "comments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "comment"
    t.bigint "touring_route_id"
    t.bigint "touring_route_rider_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["touring_route_id"], name: "index_comments_on_touring_route_id"
    t.index ["touring_route_rider_id"], name: "index_comments_on_touring_route_rider_id"
  end

  create_table "riders", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "rider_name"
    t.string "bike_name"
    t.string "icon_file_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "touring_routes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "touring_name"
    t.text "touring_desc"
    t.datetime "start_date"
    t.datetime "end_date"
    t.float "start_lat", limit: 53
    t.float "start_lon", limit: 53
    t.float "end_lat", limit: 53
    t.float "end_lon", limit: 53
    t.float "wp1_lat", limit: 53
    t.float "wp1_lon", limit: 53
    t.float "wp2_lat", limit: 53
    t.float "wp2_lon", limit: 53
    t.float "wp3_lat", limit: 53
    t.float "wp3_lon", limit: 53
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "rider_id"
    t.index ["rider_id"], name: "index_touring_routes_on_rider_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "comments", "touring_routes"
  add_foreign_key "comments", "touring_routes", column: "touring_route_rider_id"
  add_foreign_key "touring_routes", "riders"
end
