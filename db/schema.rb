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

ActiveRecord::Schema.define(version: 20170220124910) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "requests", force: :cascade do |t|
    t.datetime "start_time"
    t.datetime "end_time"
    t.integer  "user_id"
    t.integer  "suit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["suit_id"], name: "index_requests_on_suit_id", using: :btree
    t.index ["user_id"], name: "index_requests_on_user_id", using: :btree
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "suit_id"
    t.integer  "score"
    t.text     "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["suit_id"], name: "index_reviews_on_suit_id", using: :btree
    t.index ["user_id"], name: "index_reviews_on_user_id", using: :btree
  end

  create_table "suits", force: :cascade do |t|
    t.string   "image"
    t.string   "title"
    t.string   "brand"
    t.string   "colour"
    t.string   "jacket_chest"
    t.string   "jacket_length"
    t.string   "jacket_shoulder_length"
    t.string   "jacket_sleeve"
    t.string   "jacket_waist"
    t.string   "trouser_waist"
    t.string   "trouser_length"
    t.string   "trouser_front_rise"
    t.text     "notes"
    t.integer  "deposit"
    t.integer  "daily_price"
    t.string   "fit"
    t.integer  "user_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.index ["user_id"], name: "index_suits_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "profile_img"
    t.string   "password_digest"
    t.string   "username"
    t.string   "telephone_no"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address_first_line"
    t.string   "address_second_line"
    t.string   "address_city"
    t.string   "address_postcode"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_foreign_key "requests", "suits"
  add_foreign_key "requests", "users"
  add_foreign_key "reviews", "suits"
  add_foreign_key "reviews", "users"
  add_foreign_key "suits", "users"
end
