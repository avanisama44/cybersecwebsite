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

ActiveRecord::Schema.define(version: 20160326042028) do

  create_table "educations", force: :cascade do |t|
    t.string   "courses_offered"
    t.string   "course_number"
    t.string   "semester_offered"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.string   "date"
    t.text     "desc"
    t.text     "venue"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "faculties", force: :cascade do |t|
    t.string   "name"
    t.string   "dept"
    t.text     "desc"
    t.text     "office"
    t.string   "phone_no"
    t.string   "email"
    t.integer  "research_interest_id"
    t.integer  "project_id"
    t.integer  "student_id"
    t.integer  "publication_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "faculties_students", force: :cascade do |t|
    t.integer "faculty_id"
    t.integer "student_id"
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

  create_table "publications_faculties", force: :cascade do |t|
    t.integer "faculty_id"
    t.integer "publication_id"
  end

  create_table "publications_students", force: :cascade do |t|
    t.integer "publication_id"
    t.integer "student_id"
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
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "research_interest_id"
    t.integer  "project_id"
    t.integer  "faculty_id"
    t.integer  "publication_id"
  end

end
