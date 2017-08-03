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

ActiveRecord::Schema.define(version: 20170803105738) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "charities", force: :cascade do |t|
    t.string   "name"
    t.string   "short_name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "status"
  end

  create_table "faq_categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "faqs", force: :cascade do |t|
    t.string   "title"
    t.text     "answer"
    t.integer  "faq_category_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["faq_category_id"], name: "index_faqs_on_faq_category_id", using: :btree
  end

  create_table "messages", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "postcode"
    t.string   "phone"
    t.text     "message"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.boolean  "bill_comparison"
  end

  create_table "partners", force: :cascade do |t|
    t.string   "name"
    t.integer  "industry"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "line"
  end

  create_table "power_provider_states", force: :cascade do |t|
    t.integer  "state_id"
    t.integer  "power_provider_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["power_provider_id"], name: "index_power_provider_states_on_power_provider_id", using: :btree
    t.index ["state_id"], name: "index_power_provider_states_on_state_id", using: :btree
  end

  create_table "power_providers", force: :cascade do |t|
    t.string   "name"
    t.string   "major_shareholder"
    t.string   "major_shareholder_base"
    t.string   "parent_company"
    t.string   "primary_fuel_source"
    t.string   "carbon_emissions"
    t.string   "renewable_energy"
    t.boolean  "new_renewable_energy_investment"
    t.boolean  "no_csg_investment"
    t.string   "greenpower_available"
    t.string   "ombudsman_complaints"
    t.string   "dual_fuel"
    t.float    "greenpeace_ranking"
    t.float    "ethical_switch_rating"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "states", force: :cascade do |t|
    t.string   "name"
    t.string   "short_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "switches", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "phone"
    t.integer  "partner_id"
    t.integer  "charity_id"
    t.integer  "referrer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "postcode"
    t.index ["charity_id"], name: "index_switches_on_charity_id", using: :btree
    t.index ["partner_id"], name: "index_switches_on_partner_id", using: :btree
  end

  create_table "termination_fees", force: :cascade do |t|
    t.integer  "state_id"
    t.integer  "power_provider_id"
    t.string   "amount"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["power_provider_id"], name: "index_termination_fees_on_power_provider_id", using: :btree
    t.index ["state_id"], name: "index_termination_fees_on_state_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.boolean  "admin"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "faqs", "faq_categories"
  add_foreign_key "power_provider_states", "power_providers"
  add_foreign_key "power_provider_states", "states"
  add_foreign_key "switches", "charities"
  add_foreign_key "switches", "partners"
  add_foreign_key "termination_fees", "power_providers"
  add_foreign_key "termination_fees", "states"
end
