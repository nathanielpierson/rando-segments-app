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

ActiveRecord::Schema[8.0].define(version: 2025_05_27_213326) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "levels", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.integer "fastest_time_min"
    t.integer "avg_time_min"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "fastest_time_sec"
    t.integer "fastest_time_milli"
    t.integer "avg_time_sec"
    t.integer "avg_time_milli"
    t.integer "fastest_time_id"
    t.string "image_url"
    t.integer "official_course_number"
    t.string "ocean_owl_image_url"
    t.string "official_image_url"
  end

  create_table "runs", force: :cascade do |t|
    t.integer "level_id"
    t.integer "seconds"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "date_performed"
    t.integer "minutes"
    t.float "milliseconds"
  end

  create_table "stars", force: :cascade do |t|
    t.string "name"
    t.integer "level_id"
    t.string "star_type"
    t.boolean "is_unique"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "star_number"
  end
end
