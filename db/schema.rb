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

ActiveRecord::Schema.define(:version => 20131218223507) do

  create_table "fabric_information_sheets", :force => true do |t|
    t.string   "article_number"
    t.string   "fiber_content"
    t.string   "construction"
    t.string   "yarn_count"
    t.string   "gauge"
    t.integer  "weight"
    t.integer  "width_full"
    t.integer  "width_cuttable"
    t.string   "finishing"
    t.string   "features"
    t.text     "care"
    t.string   "dyeing_method"
    t.string   "dobby_jacquard"
    t.string   "pattern_repeat"
    t.string   "print_method"
    t.string   "warp_weft"
    t.string   "country"
    t.string   "sewing_factory"
    t.decimal  "unit_price"
    t.boolean  "price_date_agree"
    t.integer  "bulk_order_color"
    t.integer  "bulk_order_total"
    t.integer  "bulk_lead"
    t.integer  "sample_order_color"
    t.integer  "sample_order_total"
    t.integer  "sample_lead"
    t.integer  "bulk_surcharge_order"
    t.integer  "sample_surcharge_order"
    t.string   "surcharge_note"
    t.boolean  "blue_sign_cert"
    t.boolean  "SGS_cert"
    t.boolean  "oke_tex_cert"
    t.string   "other_cert"
    t.boolean  "exo_standards"
    t.string   "exo_standards_note"
    t.boolean  "standards_sent"
    t.boolean  "standards_received"
    t.integer  "fabric_id"
    t.integer  "mill_id"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  create_table "fabrics", :force => true do |t|
    t.string   "part_number"
    t.string   "name"
    t.text     "notes"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "mills", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "postal_code"
    t.string   "country"
    t.string   "telephone"
    t.string   "fax"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "seasons", :force => true do |t|
    t.string   "description"
    t.string   "abbreviation"
    t.integer  "year"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "role"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
