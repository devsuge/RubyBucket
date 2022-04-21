# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_04_21_074322) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "c_buckets", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "course_id", null: false
    t.integer "priority"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_c_buckets_on_course_id"
    t.index ["user_id"], name: "index_c_buckets_on_user_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "s_buckets", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "subject_id", null: false
    t.integer "priority"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subject_id"], name: "index_s_buckets_on_subject_id"
    t.index ["user_id"], name: "index_s_buckets_on_user_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.bigint "course_id", null: false
    t.string "title"
    t.string "faculty"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_subjects_on_course_id"
  end

  create_table "tests", force: :cascade do |t|
    t.string "Title"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "c_buckets", "courses"
  add_foreign_key "c_buckets", "users"
  add_foreign_key "s_buckets", "subjects"
  add_foreign_key "s_buckets", "users"
  add_foreign_key "subjects", "courses"
end
