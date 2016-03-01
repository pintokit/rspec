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

ActiveRecord::Schema.define(version: 20160301202835) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "certifications", force: :cascade do |t|
    t.string   "name"
    t.string   "acronym"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string   "name",                                limit: 50
    t.string   "address_1",                           limit: 100
    t.string   "address_2",                           limit: 50
    t.string   "city"
    t.integer  "state_id"
    t.string   "zip",                                 limit: 10
    t.string   "business_structure"
    t.integer  "year_established"
    t.integer  "number_of_employees"
    t.decimal  "last_year_sales"
    t.text     "counties"
    t.decimal  "general_liability_insurance_amount"
    t.decimal  "contract_dollars_level_interest_min"
    t.decimal  "contract_dollars_level_interest_max"
    t.text     "nature_of_business"
    t.boolean  "is_union_contractor"
    t.string   "bonding_capacity"
    t.string   "type_of_construction"
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "companies", ["state_id"], name: "index_companies_on_state_id", using: :btree

  create_table "industries", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "states", force: :cascade do |t|
    t.string   "name",       limit: 14
    t.string   "region",     limit: 10
    t.string   "acronym",    limit: 2
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_foreign_key "companies", "states"
end
