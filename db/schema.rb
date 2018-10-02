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

ActiveRecord::Schema.define(version: 20181002090739) do

  create_table "clients", force: :cascade do |t|
    t.string   "photo"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone"
    t.text     "bio"
    t.integer  "user_id"
    t.integer  "account_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_clients_on_account_id"
    t.index ["user_id"], name: "index_clients_on_user_id"
  end

  create_table "lessons", force: :cascade do |t|
    t.string   "image"
    t.string   "title"
    t.integer  "duration"
    t.integer  "cost"
    t.string   "category"
    t.string   "language"
    t.string   "level"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "trainers", force: :cascade do |t|
    t.string   "photo"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone"
    t.text     "bio"
    t.string   "experience"
    t.integer  "user_id"
    t.integer  "account_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_trainers_on_account_id"
    t.index ["user_id"], name: "index_trainers_on_user_id"
  end

end
