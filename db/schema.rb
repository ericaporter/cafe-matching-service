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

ActiveRecord::Schema.define(version: 20160128155158) do

  create_table "cafays", force: :cascade do |t|
    t.string   "location"
    t.integer  "bitterness",             default: 0
    t.integer  "plugs_available",        default: 0
    t.boolean  "has_gluten_free_option", default: false
    t.boolean  "has_wifi",               default: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "location"
    t.integer  "acceptable_bitterness",    default: 0
    t.integer  "plugs_required",           default: 0
    t.boolean  "needs_gluten_free_option", default: false
    t.boolean  "requires_wifi",            default: true
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

end
