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

ActiveRecord::Schema.define(version: 2018_09_22_190306) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "scs", force: :cascade do |t|
    t.string "qad_id"
    t.string "siv_id"
    t.string "rut"
    t.string "client_name"
    t.string "name"
    t.string "sku"
    t.string "umx"
    t.string "siv_code"
    t.string "kind"
    t.string "sub_kind"
    t.string "materials"
    t.string "structure"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "fechacreacion"
    t.string "fechaval"
  end

end
