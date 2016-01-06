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

ActiveRecord::Schema.define(version: 20160105221735) do

  create_table "appointments", force: :cascade do |t|
    t.date     "date"
    t.integer  "doctor_id",  null: false
    t.string   "pet"
    t.string   "customer"
    t.boolean  "reminder"
    t.string   "reason"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "appointments", ["doctor_id"], name: "index_appointments_on_doctor_id"

  create_table "doctors", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.integer  "zip"
    t.string   "school"
    t.integer  "years"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "state"
  end

  create_table "pets", force: :cascade do |t|
    t.string   "name"
    t.integer  "typeofpet_id"
    t.string   "breed"
    t.integer  "age"
    t.integer  "weight"
    t.date     "lastvisit"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "pets", ["typeofpet_id"], name: "index_pets_on_typeofpet_id"

  create_table "typeofpets", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
