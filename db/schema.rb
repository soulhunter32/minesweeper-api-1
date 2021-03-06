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

ActiveRecord::Schema.define(version: 20180503012148) do

  create_table "games", force: :cascade do |t|
    t.integer "user_id"
    t.boolean "over"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "bombs", default: 0
    t.integer "cols"
    t.integer "rows"
  end

  create_table "seed_migration_data_migrations", force: :cascade do |t|
    t.string "version"
    t.integer "runtime"
    t.datetime "migrated_on"
  end

  create_table "squares", force: :cascade do |t|
    t.integer "game_id"
    t.integer "x"
    t.integer "y"
    t.boolean "revealed", default: false
    t.boolean "bomb", default: false
    t.integer "bombs", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.text "password_digest"
    t.string "name"
    t.string "session_token"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
