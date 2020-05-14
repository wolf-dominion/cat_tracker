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

ActiveRecord::Schema.define(version: 2020_05_13_161334) do

  create_table "cats", force: :cascade do |t|
    t.string "species"
    t.integer "age"
    t.string "name", null: false
  end

  create_table "hangouts", force: :cascade do |t|
    t.integer "cat_id", null: false
    t.integer "location_id", null: false
    t.integer "frequency"
    t.index ["cat_id"], name: "index_hangouts_on_cat_id"
    t.index ["location_id"], name: "index_hangouts_on_location_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "title"
    t.integer "squarefoot"
  end

  add_foreign_key "hangouts", "cats"
  add_foreign_key "hangouts", "locations"
end
