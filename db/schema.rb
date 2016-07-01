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

ActiveRecord::Schema.define(version: 20160627205106) do

  create_table "auctions", force: :cascade do |t|
    t.string   "item_name",   limit: 255,                                           null: false
    t.string   "seller",      limit: 255,                                           null: false
    t.date     "end_date",                                                          null: false
    t.string   "status",      limit: 255,                          default: "Open", null: false
    t.decimal  "initial_bid",             precision: 10, scale: 2,                  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bids", force: :cascade do |t|
    t.integer  "auction_id", limit: 4,                            null: false
    t.string   "bidder",     limit: 255,                          null: false
    t.decimal  "bid",                    precision: 10, scale: 2, null: false
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

end
