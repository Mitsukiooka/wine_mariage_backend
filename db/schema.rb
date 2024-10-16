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

ActiveRecord::Schema[7.0].define(version: 2024_10_16_001539) do
  create_table "foods", charset: "utf8mb4", force: :cascade do |t|
    t.string "name", null: false
    t.string "color", null: false
    t.string "temperature", null: false
    t.string "taste", null: false
    t.string "trait", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profiles", charset: "utf8mb4", force: :cascade do |t|
    t.string "name", null: false
    t.string "favorite_kind", null: false
    t.string "total_number", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "wine_id", null: false
    t.bigint "profile_id", null: false
    t.text "content", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", charset: "utf8mb4", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "name", default: "", null: false
    t.integer "role", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "wines", charset: "utf8mb4", force: :cascade do |t|
    t.string "name", null: false
    t.string "kind", null: false
    t.string "country", null: false
    t.string "maker", null: false
    t.string "color", null: false
    t.string "body", null: false
    t.string "aroma", null: false
    t.string "score", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
