# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_10_18_030534) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "months", force: :cascade do |t|
    t.string "name", null: false
    t.integer "month_num", null: false
    t.date "month_start", null: false
    t.date "month_end", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "shifts", force: :cascade do |t|
    t.date "shift_start", null: false
    t.date "shift_end", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.integer "month_id"
  end

  create_table "swaps", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "shift_id", null: false
    t.integer "target_id", null: false
    t.integer "target_shift", null: false
    t.boolean "origin_approve", default: true
    t.integer "target_approve", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.boolean "on_call", default: false
    t.boolean "swap_request", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
