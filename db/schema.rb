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

ActiveRecord::Schema.define(version: 20180407081939) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "treatments", force: :cascade do |t|
    t.string "file1_file_name"
    t.string "file1_content_type"
    t.integer "file1_file_size"
    t.datetime "file1_updated_at"
    t.string "file2_file_name"
    t.string "file2_content_type"
    t.integer "file2_file_size"
    t.datetime "file2_updated_at"
    t.string "result_file_name"
    t.string "result_content_type"
    t.integer "result_file_size"
    t.datetime "result_updated_at"
    t.integer "created_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
