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

ActiveRecord::Schema.define(version: 2018_09_04_164057) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "league_connections", force: :cascade do |t|
    t.bigint "league_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "political_party_id"
    t.index ["league_id"], name: "index_league_connections_on_league_id"
    t.index ["political_party_id"], name: "index_league_connections_on_political_party_id"
  end

  create_table "leagues", force: :cascade do |t|
    t.bigint "user_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_leagues_on_user_id"
  end

  create_table "political_parties", force: :cascade do |t|
    t.bigint "user_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo"
    t.index ["user_id"], name: "index_political_parties_on_user_id"
  end

  create_table "politician_links", force: :cascade do |t|
    t.bigint "politician_id"
    t.bigint "political_party_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["political_party_id"], name: "index_politician_links_on_political_party_id"
    t.index ["politician_id"], name: "index_politician_links_on_politician_id"
  end

  create_table "politician_scores", force: :cascade do |t|
    t.bigint "politician_id"
    t.integer "mentions"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["politician_id"], name: "index_politician_scores_on_politician_id"
  end

  create_table "politicians", force: :cascade do |t|
    t.string "party"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo"
    t.string "first_name"
    t.string "last_name"
    t.string "rank"
    t.string "about"
  end

  create_table "user_league_connections", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "league_id"
    t.index ["league_id"], name: "index_user_league_connections_on_league_id"
    t.index ["user_id"], name: "index_user_league_connections_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.string "photo"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "league_connections", "leagues"
  add_foreign_key "league_connections", "political_parties"
  add_foreign_key "leagues", "users"
  add_foreign_key "political_parties", "users"
  add_foreign_key "politician_links", "political_parties"
  add_foreign_key "politician_links", "politicians"
  add_foreign_key "politician_scores", "politicians"
  add_foreign_key "user_league_connections", "leagues"
  add_foreign_key "user_league_connections", "users"
end
