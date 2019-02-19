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

ActiveRecord::Schema.define(version: 20190217215651) do

  create_table "duties", force: :cascade do |t|
    t.integer "ship_id"
    t.integer "required_rank"
    t.date "start_date"
    t.date "end_date"
    t.text "task"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ship_id"], name: "index_duties_on_ship_id"
  end

  create_table "duties_sailors", id: false, force: :cascade do |t|
    t.integer "sailor_id", null: false
    t.integer "duty_id", null: false
  end

  create_table "fleets", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sailors", force: :cascade do |t|
    t.string "name"
  end

  create_table "ships", force: :cascade do |t|
    t.string "name"
    t.integer "fleet_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fleet_id"], name: "index_ships_on_fleet_id"
  end

end
