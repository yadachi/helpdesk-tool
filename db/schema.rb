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

ActiveRecord::Schema.define(version: 20140414115119) do

  create_table "activities", force: true do |t|
    t.integer  "issue_id"
    t.datetime "date_time"
    t.integer  "activity_type"
    t.string   "activity_note"
    t.integer  "hours"
    t.integer  "minutes"
    t.integer  "entered_by"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "activity_id"
  end

  create_table "codes", force: true do |t|
    t.integer  "codetype"
    t.integer  "codekey"
    t.string   "codevalue"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "companies", force: true do |t|
    t.string   "name"
    t.string   "telephone"
    t.boolean  "is_deleted"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "fax"
  end

  create_table "customers", force: true do |t|
    t.string   "title",         limit: 10
    t.string   "name",          limit: 60
    t.string   "direct_number", limit: 20
    t.string   "email",         limit: 60
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "company_id"
    t.integer  "location_id"
    t.boolean  "main_contact"
  end

  create_table "issues", force: true do |t|
    t.integer  "company_name"
    t.text     "summary"
    t.datetime "received_date"
    t.date     "due_date"
    t.integer  "status"
    t.integer  "issue_type"
    t.integer  "assigned_to"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", force: true do |t|
    t.string   "name"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "city"
    t.string   "county"
    t.string   "postcode"
    t.string   "country"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "userid"
    t.string   "password_digest"
    t.string   "name"
    t.integer  "level"
    t.boolean  "accountlockflg"
    t.boolean  "delflg"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email"
  end

end
