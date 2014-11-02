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

ActiveRecord::Schema.define(version: 20141102072531) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "employees", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone_number"
    t.string   "department"
    t.string   "status"
    t.date     "join_date"
    t.date     "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "employee_code"
    t.string   "personal_email"
    t.string   "personal_phone"
  end

  add_index "employees", ["employee_code"], name: "index_employees_on_employee_code", unique: true, using: :btree
  add_index "employees", ["personal_email"], name: "index_employees_on_personal_email", unique: true, using: :btree
  add_index "employees", ["personal_phone"], name: "index_employees_on_personal_phone", unique: true, using: :btree

end
