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

ActiveRecord::Schema[7.0].define(version: 2023_02_02_153500) do
  create_table "accounts", force: :cascade do |t|
    t.integer "main_location_address_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["main_location_address_id"], name: "index_accounts_on_main_location_address_id"
  end

  create_table "addresses", force: :cascade do |t|
    t.string "line1"
    t.string "addressable_type", null: false
    t.integer "addressable_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["addressable_type", "addressable_id"], name: "index_addresses_on_addressable"
  end

  add_foreign_key "accounts", "addresses", column: "main_location_address_id"
end