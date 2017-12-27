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

ActiveRecord::Schema.define(version: 20171227034729) do

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

  create_table "admin_properties", force: :cascade do |t|
    t.string "property_type1"
    t.string "property_type2"
    t.string "transaction_type"
    t.date "mediation_date"
    t.integer "condition"
    t.text "supplementary_explanation"
    t.string "prefecture"
    t.string "city"
    t.text "street"
    t.boolean "show_street"
    t.text "apartment_name"
    t.string "roomnumber"
    t.string "buildingnumber"
    t.boolean "show_roomnumber"
    t.string "measurement"
    t.integer "land_area"
    t.integer "occupied_area"
    t.integer "building_area1"
    t.integer "building_area2"
    t.integer "balcony_area"
    t.integer "terrace_area"
    t.integer "privategarden_area"
    t.string "driveway_burden"
    t.integer "driveway_area"
    t.string "driveway_part1"
    t.string "driveway_part2"
    t.string "setback_class"
    t.integer "setback_distance"
    t.integer "setback_area"
    t.string "alleyground_class"
    t.integer "alleyground_area"
    t.integer "firstfloor_area"
    t.integer "secondfloor_area"
    t.integer "thirdfloor_area"
    t.text "otherfloor_area"
    t.string "development_area1"
    t.integer "total_area"
    t.integer "subdivision"
    t.date "construction_date"
    t.integer "coownership_area"
    t.string "coownership"
    t.string "development_area2"
    t.integer "building_area3"
    t.integer "totalfloor_area"
    t.string "route_name1"
    t.text "station_name1"
    t.integer "station_walkm1"
    t.integer "station_walkd1"
    t.integer "station_car1"
    t.integer "station_bus1"
    t.integer "busstop_walkm1"
    t.integer "busstop_walkd1"
    t.text "busroute_name1"
    t.text "busstop_name1"
    t.string "route_name2"
    t.text "station_name2"
    t.integer "station_walkm2"
    t.integer "station_walkd2"
    t.integer "station_car2"
    t.integer "station_bus2"
    t.integer "busstop_walkm2"
    t.integer "busstop_walkd2"
    t.text "busroute_name2"
    t.text "busstop_name2"
    t.string "route_name3"
    t.text "station_name3"
    t.integer "station_walkm3"
    t.integer "station_walkd3"
    t.integer "station_car3"
    t.integer "station_bus3"
    t.integer "busstop_walkm3"
    t.integer "busstop_walkd3"
    t.text "busroute_name3"
    t.text "busstop_name3"
    t.text "other_transportation"
    t.string "floor_plan"
    t.integer "room"
    t.boolean "corner_room"
    t.integer "room_level1"
    t.string "room_type1"
    t.integer "room_size1"
    t.integer "room_level2"
    t.string "room_type2"
    t.integer "room_size2"
    t.integer "room_level3"
    t.string "room_type3"
    t.integer "room_size3"
    t.integer "room_level4"
    t.string "room_type4"
    t.integer "room_size4"
    t.integer "room_level5"
    t.string "room_type5"
    t.integer "room_size5"
    t.integer "room_level6"
    t.string "room_type6"
    t.integer "room_size6"
    t.integer "room_level7"
    t.string "room_type7"
    t.integer "room_size7"
    t.integer "room_leve8"
    t.string "room_type8"
    t.integer "room_size8"
    t.integer "room_level9"
    t.string "room_type9"
    t.integer "room_size9"
    t.text "other_room"
    t.integer "price"
    t.integer "consumption_tax"
    t.string "situation"
    t.date "situation_date"
    t.string "transfer"
    t.string "transfer_date"
    t.date "move_date"
    t.string "remuneration"
    t.integer "fee_part"
    t.integer "fee_amount"
    t.string "town_plan"
    t.string "register_landcategory"
    t.string "situation_landcategory"
    t.string "zoning1"
    t.string "zoning2"
    t.string "optimum"
    t.string "_site"
    t.string "zoning_district"
    t.integer "buildingcoverage_ratio"
    t.integer "floorarea_ratio"
    t.string "floorarea_restriction"
    t.text "law_restriction"
    t.boolean "rebuilding"
    t.string "nationalland_law"
    t.string "buildingcertification"
    t.string "buildingcertification_number"
    t.string "land_title"
    t.string "terrain"
    t.string "architectural_condition"
    t.string "connecting_road"
    t.string "paved_road"
    t.string "road_class1"
    t.integer "contact_distance1"
    t.string "designation_road1"
    t.string "road_direction1"
    t.integer "road_width1"
    t.string "road_class2"
    t.integer "contact_distance2"
    t.string "designation_road2"
    t.string "road_direction2"
    t.integer "road_width2"
    t.string "road_class3"
    t.integer "contact_distance3"
    t.string "designation_road3"
    t.string "road_direction3"
    t.integer "road_width3"
    t.string "road_class4"
    t.integer "contact_distance4"
    t.string "designation_road4"
    t.string "road_direction4"
    t.integer "road_width4"
    t.string "homeowner_association"
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
