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

ActiveRecord::Schema[7.0].define(version: 2023_02_15_111938) do
  create_table "wine_reviews", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "wine_id", null: false
    t.string "color", null: false
    t.string "body", null: false
    t.string "aroma", null: false
    t.integer "score", null: false
    t.text "content", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["wine_id"], name: "index_wine_reviews_on_wine_id"
  end

  create_table "wine_varieties", charset: "utf8mb4", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "wines", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "wine_variety_id", null: false
    t.string "name", null: false
    t.integer "kind", null: false
    t.string "country", null: false
    t.string "maker", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["wine_variety_id"], name: "index_wines_on_wine_variety_id"
  end

  add_foreign_key "wine_reviews", "wines"
  add_foreign_key "wines", "wine_varieties"
end
