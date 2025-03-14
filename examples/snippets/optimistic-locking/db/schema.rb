# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 1) do
  connection.start_batch_ddl

  create_table "albums", force: :cascade do |t|
    t.string "title"
    t.decimal "marketing_budget"
    t.integer "singer_id", limit: 8
    t.integer "lock_version", limit: 8
  end

  create_table "singers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "lock_version", limit: 8
  end

  add_foreign_key "albums", "singers"
  connection.run_batch
rescue
  abort_batch
  raise
end
