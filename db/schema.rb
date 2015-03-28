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

ActiveRecord::Schema.define(version: 20150328215154) do

  create_table "shipments", force: :cascade do |t|
    t.string   "shipper"
    t.string   "consignee"
    t.string   "masterbill"
    t.string   "housebill"
    t.boolean  "clearance",  default: false
    t.string   "user_id"
    t.date     "eta"
    t.date     "ata"
    t.boolean  "dispatched", default: false
    t.string   "pod"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.boolean  "archive",    default: false
    t.text     "comments"
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
