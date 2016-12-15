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

ActiveRecord::Schema.define(version: 20161214225557) do

  create_table "bicycles", force: true do |t|
    t.string   "modelName"
    t.string   "colour"
    t.boolean  "secondHand"
    t.float    "purchaseCost"
    t.float    "rentCostDay"
    t.string   "frame"
    t.string   "typeOfBicycle"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", force: true do |t|
    t.text     "content"
    t.integer  "customer_id"
    t.integer  "bicycle_id"
    t.integer  "stars"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", force: true do |t|
    t.string   "userName"
    t.string   "phoneNum"
    t.date     "dob"
    t.text     "address"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "attachment"
    t.string   "address2"
  end

  create_table "purchases", force: true do |t|
    t.integer  "customer_id"
    t.integer  "bicycle_id"
    t.date     "dateOfPurchase"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rents", force: true do |t|
    t.integer  "customer_id"
    t.integer  "bicycle_id"
    t.integer  "numOfDays"
    t.date     "dateOfRent"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "search_suggestions", force: true do |t|
    t.string   "term"
    t.integer  "popularity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
