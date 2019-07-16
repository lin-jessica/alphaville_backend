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

ActiveRecord::Schema.define(version: 2019_07_16_220230) do

  create_table "exhibit_lists", force: :cascade do |t|
    t.integer "exhibit_id"
    t.integer "list_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exhibits", force: :cascade do |t|
    t.string "name"
    t.date "start_date"
    t.date "end_date"
    t.string "img_url"
    t.text "price"
    t.boolean "free"
    t.boolean "reception"
    t.date "reception_date"
    t.time "reception_start"
    t.time "reception_end"
    t.boolean "permanent"
    t.integer "days_left"
    t.integer "venue_id"
    t.integer "author_user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lists", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_followed_venues", force: :cascade do |t|
    t.integer "user_id"
    t.integer "venue_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_saved_exhibits", force: :cascade do |t|
    t.integer "user_id"
    t.integer "exhibit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_saved_lists", force: :cascade do |t|
    t.integer "user_id"
    t.integer "list_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password_digest"
    t.text "bio"
    t.string "profile_img"
    t.string "mobile_num"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "venues", force: :cascade do |t|
    t.string "name"
    t.string "type"
    t.string "address"
    t.string "phone"
    t.string "directions"
    t.string "neighborhood"
    t.time "opening_hour"
    t.time "closing_hour"
    t.boolean "open_mon"
    t.boolean "open_tue"
    t.boolean "open_wed"
    t.boolean "open_thu"
    t.boolean "open_fri"
    t.boolean "open_sat"
    t.boolean "open_sun"
    t.text "schedule_details"
    t.text "schedule_note"
    t.decimal "latitude"
    t.decimal "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
