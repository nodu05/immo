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

ActiveRecord::Schema.define(version: 20171124011418) do

  create_table "admin_companies", force: :cascade do |t|
    t.string "name"
    t.string "main_phone"
    t.string "inquiry_phone"
    t.integer "postal_code"
    t.string "prefecture"
    t.string "city"
    t.text "street"
    t.text "email"
    t.text "license_number"
    t.time "open_time"
    t.time "end_time"
    t.text "regular_holiday"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "admin_customers", force: :cascade do |t|
    t.string "last_name"
    t.string "first_name"
    t.string "furigana_last_name"
    t.string "furigana_first_name"
    t.string "gender"
    t.date "birth"
    t.string "home_phone"
    t.string "mobile_phone"
    t.integer "postal_code"
    t.string "prefecture"
    t.string "city"
    t.text "street"
    t.text "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "admin_staffs", force: :cascade do |t|
    t.string "company_id"
    t.text "picture"
    t.date "shooting_date"
    t.string "certificate_number"
    t.date "start_certificate_lifetime"
    t.date "end_certificate_lifetime"
    t.boolean "real_estate_notary"
    t.string "last_name"
    t.string "first_name"
    t.string "furigana_last_name"
    t.string "furigana_first_name"
    t.string "gender"
    t.date "birth"
    t.string "home_phone"
    t.string "mobile_phone"
    t.integer "postal_code"
    t.string "prefecture"
    t.string "city"
    t.text "street"
    t.text "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
