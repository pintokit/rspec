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

ActiveRecord::Schema.define(version: 20160315010548) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bids", force: :cascade do |t|
    t.integer  "opportunity_id"
    t.boolean  "is_interested"
    t.boolean  "is_unsure"
    t.integer  "company_id"
    t.string   "reason_unsure"
    t.string   "need_assistance_1"
    t.string   "need_assistance_2"
    t.string   "able_to_complete"
    t.string   "decline_reasons"
    t.datetime "contacted"
    t.string   "employee_notes"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "bids", ["company_id"], name: "index_bids_on_company_id", using: :btree
  add_index "bids", ["opportunity_id"], name: "index_bids_on_opportunity_id", using: :btree

  create_table "certifications", force: :cascade do |t|
    t.string   "name"
    t.string   "acronym"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "certifications_companies", id: false, force: :cascade do |t|
    t.integer "company_id"
    t.integer "certification_id"
  end

  add_index "certifications_companies", ["certification_id"], name: "index_certifications_companies_on_certification_id", using: :btree
  add_index "certifications_companies", ["company_id"], name: "index_certifications_companies_on_company_id", using: :btree

  create_table "clients", force: :cascade do |t|
    t.string   "name",       limit: 50
    t.string   "address_1",  limit: 100
    t.string   "address_2",  limit: 50
    t.string   "city"
    t.integer  "state_id"
    t.string   "zip",        limit: 10
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "clients", ["state_id"], name: "index_clients_on_state_id", using: :btree

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

  create_table "companies_opportunities", id: false, force: :cascade do |t|
    t.integer "company_id"
    t.integer "opportunity_id"
  end

  add_index "companies_opportunities", ["company_id"], name: "index_companies_opportunities_on_company_id", using: :btree
  add_index "companies_opportunities", ["opportunity_id"], name: "index_companies_opportunities_on_opportunity_id", using: :btree

  create_table "company_industries", id: false, force: :cascade do |t|
    t.integer "company_id"
    t.integer "industry_id"
  end

  add_index "company_industries", ["company_id"], name: "index_company_industries_on_company_id", using: :btree
  add_index "company_industries", ["industry_id"], name: "index_company_industries_on_industry_id", using: :btree

  create_table "industries", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "opportunities", force: :cascade do |t|
    t.integer  "client_id"
    t.string   "project_name"
    t.string   "project_owner"
    t.boolean  "union_contract"
    t.string   "city"
    t.integer  "state_id"
    t.string   "contact_name"
    t.integer  "contact_phone",       limit: 8
    t.integer  "contact_fax",         limit: 8
    t.string   "contact_email"
    t.date     "bid_date"
    t.text     "trades_solicited"
    t.text     "project_description"
    t.text     "bid_instructions"
    t.string   "project_url"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "opportunities", ["client_id"], name: "index_opportunities_on_client_id", using: :btree
  add_index "opportunities", ["state_id"], name: "index_opportunities_on_state_id", using: :btree

  create_table "states", force: :cascade do |t|
    t.string   "name",       limit: 14
    t.string   "region",     limit: 10
    t.string   "acronym",    limit: 2
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "users", force: :cascade do |t|
    t.integer  "company_id",                 default: 1, null: false
    t.string   "first_name",     limit: 30,              null: false
    t.string   "last_name",      limit: 30,              null: false
    t.string   "title",          limit: 50
    t.string   "address_1",      limit: 100
    t.string   "address_2",      limit: 50
    t.string   "city"
    t.integer  "state_id"
    t.string   "zip",            limit: 10
    t.integer  "mobile_number",  limit: 8
    t.integer  "office_number",  limit: 8
    t.integer  "extension",      limit: 8
    t.integer  "fax_number",     limit: 8
    t.string   "gender"
    t.string   "ethnicity"
    t.string   "veteran_status"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  add_index "users", ["company_id"], name: "index_users_on_company_id", using: :btree
  add_index "users", ["state_id"], name: "index_users_on_state_id", using: :btree

  add_foreign_key "bids", "companies"
  add_foreign_key "bids", "opportunities"
  add_foreign_key "clients", "states"
  add_foreign_key "companies", "states"
  add_foreign_key "company_industries", "companies"
  add_foreign_key "company_industries", "industries"
  add_foreign_key "opportunities", "clients"
  add_foreign_key "opportunities", "states"
  add_foreign_key "users", "companies"
  add_foreign_key "users", "states"
end
