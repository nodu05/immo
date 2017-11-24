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

ActiveRecord::Schema.define(version: 20171124035932) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.integer "resource_id"
    t.string "author_type"
    t.integer "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

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

  create_table "admin_selects", force: :cascade do |t|
    t.string "content_id"
    t.integer "select_id"
    t.text "return_text"
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

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

end
