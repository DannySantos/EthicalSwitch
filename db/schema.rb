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

ActiveRecord::Schema.define(version: 20170730104728) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "charities", force: :cascade do |t|
    t.string   "name"
    t.string   "short_name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
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
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "partners", force: :cascade do |t|
    t.string   "name"
    t.integer  "industry"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "line"
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

  add_foreign_key "faqs", "faq_categories"
  add_foreign_key "switches", "charities"
  add_foreign_key "switches", "partners"
end
