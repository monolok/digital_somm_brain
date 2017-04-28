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

ActiveRecord::Schema.define(version: 20170416171136) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "grapes", force: :cascade do |t|
    t.string   "name"
    t.string   "climate"
    t.string   "world"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "grapes_noses", force: :cascade do |t|
    t.integer  "grape_id"
    t.integer  "nose_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "grapes_palate_flavors", force: :cascade do |t|
    t.integer  "grape_id"
    t.integer  "palate_flavor_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "grapes_palate_structures", force: :cascade do |t|
    t.integer  "grape_id"
    t.integer  "palate_structure_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "grapes_sights", force: :cascade do |t|
    t.integer  "grape_id"
    t.integer  "sight_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "noses", force: :cascade do |t|
    t.text     "clean"
    t.text     "intensity"
    t.text     "age"
    t.text     "fruit"
    t.text     "fruit_character"
    t.text     "non_fruit"
    t.text     "organic_earth"
    t.text     "inorganic_earth"
    t.text     "wood"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "palate_flavors", force: :cascade do |t|
    t.text     "fruit"
    t.text     "fruit_character"
    t.text     "non_fruit"
    t.text     "organic_earth"
    t.text     "inorganic_earth"
    t.text     "wood"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "palate_structures", force: :cascade do |t|
    t.text     "sweetness"
    t.text     "phenolic"
    t.text     "body"
    t.text     "alcohol"
    t.text     "acid"
    t.text     "tannin"
    t.text     "texture"
    t.text     "balance"
    t.text     "length"
    t.text     "complexity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sights", force: :cascade do |t|
    t.text     "clarity"
    t.text     "brightness"
    t.text     "concentration"
    t.text     "color"
    t.text     "secondary_colors"
    t.text     "staining"
    t.text     "tears"
    t.text     "gas"
    t.text     "sediment"
    t.text     "rim"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "testables", force: :cascade do |t|
    t.string   "name"
    t.integer  "grape_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
