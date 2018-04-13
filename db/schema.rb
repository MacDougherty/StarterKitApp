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

ActiveRecord::Schema.define(version: 2018_04_13_122754) do

  create_table "apiotics_settings", force: :cascade do |t|
    t.string "key"
    t.text "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "starter_kit_buzzers", force: :cascade do |t|
    t.boolean "buzzer"
    t.boolean "buzzer_ack"
    t.boolean "buzzer_complete"
    t.string "port_number"
    t.boolean "port_number_ack"
    t.boolean "port_number_complete"
    t.integer "starter_kit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "starter_kit_four_digit_displays", force: :cascade do |t|
    t.boolean "clock"
    t.boolean "clock_ack"
    t.boolean "clock_complete"
    t.string "display"
    t.boolean "display_ack"
    t.boolean "display_complete"
    t.string "port_number"
    t.boolean "port_number_ack"
    t.boolean "port_number_complete"
    t.integer "starter_kit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "starter_kit_light_sensors", force: :cascade do |t|
    t.integer "intensity", limit: 4
    t.boolean "intensity_ack"
    t.boolean "intensity_complete"
    t.string "port_number"
    t.boolean "port_number_ack"
    t.boolean "port_number_complete"
    t.integer "starter_kit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "starter_kit_potentiometers", force: :cascade do |t|
    t.integer "position", limit: 4
    t.boolean "position_ack"
    t.boolean "position_complete"
    t.string "port_number"
    t.boolean "port_number_ack"
    t.boolean "port_number_complete"
    t.integer "starter_kit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "starter_kit_starter_kits", force: :cascade do |t|
    t.string "apiotics_instance"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "starter_kit_ultrasonic_range_sensors", force: :cascade do |t|
    t.integer "range", limit: 8
    t.boolean "range_ack"
    t.boolean "range_complete"
    t.string "port_number"
    t.boolean "port_number_ack"
    t.boolean "port_number_complete"
    t.integer "starter_kit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
