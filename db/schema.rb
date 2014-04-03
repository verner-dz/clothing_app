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

ActiveRecord::Schema.define(version: 20140331220200) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "products", force: true do |t|
    t.string  "name"
    t.integer "qty"
    t.integer "price"
    t.string  "img_url"
    t.string  "description"
    t.integer "supplier_id"
  end

  add_index "products", ["supplier_id"], name: "index_products_on_supplier_id", using: :btree

  create_table "products_purchases", force: true do |t|
    t.integer "product_id"
    t.integer "purchase_id"
  end

  create_table "purchases", force: true do |t|
    t.integer "price"
    t.integer "qty"
    t.integer "user_id"
  end

  create_table "suppliers", force: true do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
  end

  create_table "users", force: true do |t|
    t.string  "name"
    t.string  "email"
    t.string  "password_digest"
    t.boolean "admin"
  end

end
