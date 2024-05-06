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

ActiveRecord::Schema.define(version: 2024_04_17_113753) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "duration"
    t.string "course_outline"
    t.integer "students", default: [], array: true
    t.bigint "school_id", null: false
    t.bigint "course_teacher_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "discarded", default: false
    t.index ["course_teacher_id"], name: "index_courses_on_course_teacher_id"
    t.index ["school_id"], name: "index_courses_on_school_id"
  end

  create_table "schools", force: :cascade do |t|
    t.string "name", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "discarded", default: false
    t.index ["name"], name: "index_schools_on_name", unique: true
    t.index ["user_id"], name: "index_schools_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "password_digest", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.boolean "allow_password_change", default: false
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.string "last_name"
    t.string "first_name"
    t.string "image"
    t.string "email"
    t.date "birthday"
    t.string "guardian_email"
    t.integer "role", default: 0, null: false
    t.json "tokens"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "discarded", default: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["unconfirmed_email"], name: "index_users_on_unconfirmed_email", unique: true
  end

  add_foreign_key "courses", "schools"
  add_foreign_key "courses", "users", column: "course_teacher_id"
  add_foreign_key "schools", "users"
end
