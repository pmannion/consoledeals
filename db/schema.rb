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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20131127212846) do

  create_table "adverts", :force => true do |t|
    t.integer  "user_id"
    t.integer  "console_id"
    t.string   "product_name"
    t.string   "condition"
    t.text     "description"
    t.decimal  "price"
    t.string   "phone"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "branches", :force => true do |t|
    t.boolean  "display"
    t.integer  "supplier_id"
    t.string   "add_1"
    t.string   "street"
    t.string   "town"
    t.string   "city"
    t.string   "email"
    t.string   "long"
    t.string   "lat"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "carts", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "consoles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "console_format"
  end

  create_table "giftsearches", :force => true do |t|
    t.integer  "min_spend"
    t.integer  "max_spend"
    t.string   "category"
    t.string   "gift_for"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "console_id"
    t.boolean  "show_games"
  end

  create_table "line_items", :force => true do |t|
    t.integer  "product_id"
    t.integer  "cart_id"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
    t.integer  "quantity",   :default => 1
    t.integer  "order_id"
  end

  create_table "orders", :force => true do |t|
    t.string   "name"
    t.string   "add_1"
    t.string   "street"
    t.string   "town"
    t.string   "city"
    t.string   "country"
    t.string   "email"
    t.string   "pay_type"
    t.integer  "branch_id"
    t.datetime "collection_date"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "products", :force => true do |t|
    t.integer  "user_id"
    t.integer  "supplier_id"
    t.boolean  "display",                   :default => true
    t.string   "name"
    t.text     "description"
    t.string   "category"
    t.string   "sub_category"
    t.string   "sub_category2"
    t.float    "price"
    t.boolean  "special_offer",             :default => false
    t.float    "special_offer_price"
    t.string   "special_offer_description"
    t.date     "start_date"
    t.date     "end_date"
    t.boolean  "irish_product",             :default => false
    t.string   "image"
    t.datetime "created_at",                                   :null => false
    t.datetime "updated_at",                                   :null => false
    t.string   "gift_for"
    t.string   "console_format"
    t.boolean  "is_bundle"
    t.string   "item1"
    t.string   "item2"
    t.string   "item3"
    t.boolean  "extra_controller"
    t.float    "bundle_value"
    t.integer  "console_id"
  end

  create_table "reservations", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "suppliers", :force => true do |t|
    t.string   "image"
    t.string   "branch"
    t.text     "description"
    t.string   "email"
    t.boolean  "display"
    t.string   "link"
    t.string   "street"
    t.string   "town"
    t.string   "city"
    t.string   "county"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.string   "name"
    t.string   "product_name"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
