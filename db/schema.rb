# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160416181613) do

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "logotype_file_name"
    t.string   "logotype_content_type"
    t.integer  "logotype_file_size"
    t.datetime "logotype_updated_at"
    t.string   "logotype"
    t.string   "url"
    t.string   "adress"
    t.string   "on_map"
    t.string   "phone"
    t.boolean  "is_confirmed"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "employment_contracts", force: :cascade do |t|
    t.date     "date_start"
    t.date     "date_and"
    t.integer  "company_id"
    t.integer  "employment_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "employments", force: :cascade do |t|
    t.string   "first_name"
    t.string   "second_name"
    t.string   "third_name"
    t.string   "photo"
    t.string   "phone"
    t.date     "birth_date"
    t.text     "decription"
    t.integer  "specialty_id"
    t.boolean  "is_confirmed"
    t.boolean  "is_free"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "specialties", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
