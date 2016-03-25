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

ActiveRecord::Schema.define(version: 20160318183043) do

  create_table "faculties", force: :cascade do |t|
    t.string   "name"
    t.string   "dept"
    t.text     "desc"
    t.text     "office"
    t.string   "phone_no"
    t.string   "email"
    t.integer  "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "faculties_students", id: false, force: :cascade do |t|
    t.integer "faculty_id", null: false
    t.integer "student_id", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string   "name"
    t.string   "sponsor"
    t.text     "desc"
    t.integer  "faculty_id"
    t.integer  "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "publications", force: :cascade do |t|
    t.string   "name"
    t.text     "abstract"
    t.string   "keywords"
    t.integer  "faculty_id"
    t.integer  "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "research_interests", force: :cascade do |t|
    t.string   "name"
    t.integer  "faculty_id"
    t.integer  "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "name"
    t.string   "dept"
    t.text     "desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
