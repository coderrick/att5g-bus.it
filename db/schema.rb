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

ActiveRecord::Schema.define(version: 2019_10_06_030704) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "additives", id: :serial, force: :cascade do |t|
    t.string "name"
    t.decimal "volume"
    t.integer "recipe_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["recipe_id"], name: "index_additives_on_recipe_id"
    t.index ["user_id"], name: "index_additives_on_user_id"
  end

  create_table "camplogs", id: :serial, force: :cascade do |t|
    t.string "title"
    t.text "log"
    t.datetime "start_time"
    t.datetime "end_time"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
    t.index ["user_id"], name: "index_camplogs_on_user_id"
  end

  create_table "camps", id: :serial, force: :cascade do |t|
    t.datetime "start_time"
    t.datetime "end_time"
    t.text "info"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_camps_on_user_id"
  end

  create_table "comments", id: :serial, force: :cascade do |t|
    t.string "commentable_type"
    t.integer "commentable_id"
    t.integer "user_id"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "compressionlogs", id: :serial, force: :cascade do |t|
    t.string "cprstarttime"
    t.string "cprstoptime"
    t.string "compression"
    t.string "compressioncount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "consumers", id: :serial, force: :cascade do |t|
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_consumers_on_user_id"
  end

  create_table "emgs", id: :serial, force: :cascade do |t|
    t.datetime "timestamp"
    t.integer "C_1"
    t.integer "C_2"
    t.integer "C_3"
    t.integer "C_4"
    t.integer "C_5"
    t.integer "C_6"
    t.integer "C_7"
    t.integer "C_8"
    t.integer "consumer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["consumer_id"], name: "index_emgs_on_consumer_id"
  end

  create_table "entertainments", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "farms", id: :serial, force: :cascade do |t|
    t.string "name"
    t.text "about"
    t.datetime "start_time"
    t.datetime "end_time"
    t.integer "plant_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
    t.string "images"
    t.index ["plant_id"], name: "index_farms_on_plant_id"
    t.index ["user_id"], name: "index_farms_on_user_id"
  end

  create_table "feeds", id: :serial, force: :cascade do |t|
    t.text "note"
    t.integer "user_id"
    t.integer "plant_id"
    t.string "image_id"
    t.integer "recipe_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "start_time"
    t.index ["plant_id"], name: "index_feeds_on_plant_id"
    t.index ["recipe_id"], name: "index_feeds_on_recipe_id"
    t.index ["user_id"], name: "index_feeds_on_user_id"
  end

  create_table "fourds", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "hcps", id: :serial, force: :cascade do |t|
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "order_id"
    t.integer "note_id"
    t.integer "med_id"
    t.integer "vital_id"
    t.integer "lab_id"
    t.index ["lab_id"], name: "index_hcps_on_lab_id"
    t.index ["med_id"], name: "index_hcps_on_med_id"
    t.index ["note_id"], name: "index_hcps_on_note_id"
    t.index ["order_id"], name: "index_hcps_on_order_id"
    t.index ["user_id"], name: "index_hcps_on_user_id"
    t.index ["vital_id"], name: "index_hcps_on_vital_id"
  end

  create_table "labs", id: :serial, force: :cascade do |t|
    t.string "na"
    t.string "k"
    t.string "urea"
    t.string "glucose"
    t.string "bun"
    t.string "wbc"
    t.string "rbc"
    t.string "hgb"
    t.string "hct"
    t.string "mcv"
    t.string "mch"
    t.string "plt"
    t.string "mpv"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "info"
    t.datetime "start_time"
    t.integer "hcp_id"
    t.integer "consumer_id"
  end

  create_table "meds", id: :serial, force: :cascade do |t|
    t.string "name"
    t.string "dose"
    t.string "route"
    t.string "dose_timing"
    t.datetime "start_time"
    t.datetime "end_time"
    t.string "med_image_id"
    t.integer "consumer_id"
    t.integer "hcp_id"
    t.integer "plant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
    t.index ["consumer_id"], name: "index_meds_on_consumer_id"
    t.index ["hcp_id"], name: "index_meds_on_hcp_id"
    t.index ["plant_id"], name: "index_meds_on_plant_id"
  end

  create_table "networks", force: :cascade do |t|
    t.integer "bus_id"
    t.integer "station_id"
    t.string "bandwidth"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "five_g"
    t.string "start"
    t.string "end"
  end

  create_table "notes", id: :serial, force: :cascade do |t|
    t.string "service"
    t.text "subjective"
    t.text "objective"
    t.text "assessment"
    t.text "plan"
    t.integer "consumer_id"
    t.integer "hcp_id"
    t.datetime "start_time"
    t.string "note_image_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
    t.index ["consumer_id"], name: "index_notes_on_consumer_id"
    t.index ["hcp_id"], name: "index_notes_on_hcp_id"
  end

  create_table "orders", id: :serial, force: :cascade do |t|
    t.string "name"
    t.string "details"
    t.string "order_image_id"
    t.integer "consumer_id"
    t.integer "hcp_id"
    t.datetime "start_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
    t.index ["consumer_id"], name: "index_orders_on_consumer_id"
    t.index ["hcp_id"], name: "index_orders_on_hcp_id"
  end

  create_table "plants", id: :serial, force: :cascade do |t|
    t.string "name"
    t.text "info"
    t.integer "farm_id"
    t.integer "user_id"
    t.string "image_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "start_time"
    t.integer "profile_id"
    t.string "image"
    t.string "images"
    t.index ["farm_id"], name: "index_plants_on_farm_id"
    t.index ["profile_id"], name: "index_plants_on_profile_id"
    t.index ["user_id"], name: "index_plants_on_user_id"
  end

  create_table "profiles", id: :serial, force: :cascade do |t|
    t.text "info"
    t.integer "plant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["plant_id"], name: "index_profiles_on_plant_id"
  end

  create_table "recipes", id: :serial, force: :cascade do |t|
    t.string "name"
    t.integer "user_id"
    t.integer "feed_id"
    t.integer "additive_id"
    t.integer "solution_id"
    t.datetime "start_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["additive_id"], name: "index_recipes_on_additive_id"
    t.index ["feed_id"], name: "index_recipes_on_feed_id"
    t.index ["solution_id"], name: "index_recipes_on_solution_id"
    t.index ["user_id"], name: "index_recipes_on_user_id"
  end

  create_table "senselogs", id: :serial, force: :cascade do |t|
    t.string "temp_h"
    t.string "temp_p"
    t.string "humidity"
    t.string "pressure"
    t.string "timestamp"
    t.string "device"
    t.integer "farm_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "temp"
    t.string "soil"
    t.integer "sensor_id"
    t.index ["farm_id"], name: "index_senselogs_on_farm_id"
  end

  create_table "solutions", id: :serial, force: :cascade do |t|
    t.string "name"
    t.decimal "volume"
    t.integer "recipe_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["recipe_id"], name: "index_solutions_on_recipe_id"
    t.index ["user_id"], name: "index_solutions_on_user_id"
  end

  create_table "talking_stick_participants", id: :serial, force: :cascade do |t|
    t.string "name"
    t.string "ip"
    t.string "guid"
    t.datetime "joined_at"
    t.datetime "last_seen"
    t.integer "room_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["guid"], name: "index_talking_stick_participants_on_guid"
    t.index ["room_id"], name: "index_talking_stick_participants_on_room_id"
  end

  create_table "talking_stick_rooms", id: :serial, force: :cascade do |t|
    t.string "name"
    t.datetime "last_used"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
  end

  create_table "talking_stick_signals", id: :serial, force: :cascade do |t|
    t.integer "room_id"
    t.integer "sender_id"
    t.integer "recipient_id"
    t.string "signal_type"
    t.text "data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["recipient_id"], name: "index_talking_stick_signals_on_recipient_id"
    t.index ["sender_id"], name: "index_talking_stick_signals_on_sender_id"
  end

  create_table "trims", id: :serial, force: :cascade do |t|
    t.decimal "waste_weight"
    t.decimal "wet_weight"
    t.decimal "jar_weight"
    t.decimal "cured_weight", precision: 5, scale: 2, default: "0.0", null: false
    t.integer "plant_id"
    t.integer "user_id"
    t.datetime "start_time"
    t.string "image_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["plant_id"], name: "index_trims_on_plant_id"
    t.index ["user_id"], name: "index_trims_on_user_id"
  end

  create_table "users", id: :serial, force: :cascade do |t|
    t.string "provider"
    t.string "uid"
    t.string "name"
    t.string "oauth_token"
    t.datetime "oauth_expires_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.boolean "approved"
    t.boolean "farmer"
    t.boolean "hcp"
    t.boolean "hcc"
    t.boolean "admin"
    t.boolean "farmerwkr"
    t.string "auth_token"
    t.index ["auth_token"], name: "index_users_on_auth_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
  end

  create_table "vitals", id: :serial, force: :cascade do |t|
    t.string "pulse"
    t.string "resp"
    t.string "oxy"
    t.string "temp"
    t.string "bpsys"
    t.string "bpdia"
    t.string "pain"
    t.string "vital_image_id"
    t.datetime "start_time"
    t.integer "consumer_id"
    t.integer "hcp_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
    t.index ["consumer_id"], name: "index_vitals_on_consumer_id"
    t.index ["hcp_id"], name: "index_vitals_on_hcp_id"
  end

  add_foreign_key "additives", "recipes"
  add_foreign_key "additives", "users"
  add_foreign_key "camplogs", "users"
  add_foreign_key "camps", "users"
  add_foreign_key "consumers", "users"
  add_foreign_key "emgs", "consumers"
  add_foreign_key "feeds", "plants"
  add_foreign_key "feeds", "users"
  add_foreign_key "hcps", "labs"
  add_foreign_key "hcps", "meds"
  add_foreign_key "hcps", "notes"
  add_foreign_key "hcps", "orders"
  add_foreign_key "hcps", "users"
  add_foreign_key "hcps", "vitals"
  add_foreign_key "meds", "consumers"
  add_foreign_key "meds", "hcps"
  add_foreign_key "notes", "consumers"
  add_foreign_key "notes", "hcps"
  add_foreign_key "orders", "consumers"
  add_foreign_key "orders", "hcps"
  add_foreign_key "plants", "farms"
  add_foreign_key "plants", "users"
  add_foreign_key "profiles", "plants"
  add_foreign_key "recipes", "feeds"
  add_foreign_key "recipes", "users"
  add_foreign_key "senselogs", "farms"
  add_foreign_key "solutions", "recipes"
  add_foreign_key "solutions", "users"
  add_foreign_key "trims", "plants"
  add_foreign_key "trims", "users"
  add_foreign_key "vitals", "consumers"
  add_foreign_key "vitals", "hcps"
end
