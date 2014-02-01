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

ActiveRecord::Schema.define(version: 20140201035445) do

  create_table "businesses", force: true do |t|
    t.string   "business_id"
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "postal_code"
    t.string   "phone_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "businesses", ["business_id"], name: "index_businesses_on_business_id", using: :btree

  create_table "inspections", force: true do |t|
    t.string   "business_id"
    t.integer  "score"
    t.date     "date"
    t.text     "Description"
    t.string   "inspection_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "inspections", ["business_id"], name: "index_inspections_on_business_id", using: :btree

  create_table "violations", force: true do |t|
    t.string   "business_id"
    t.date     "date"
    t.string   "code"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "violations", ["business_id"], name: "index_violations_on_business_id", using: :btree

end
