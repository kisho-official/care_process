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

ActiveRecord::Schema.define(:version => 20170303064710) do

  create_table "delayed_jobs", :force => true do |t|
    t.integer  "priority",   :default => 0, :null => false
    t.integer  "attempts",   :default => 0, :null => false
    t.text     "handler",                   :null => false
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "delayed_jobs", ["priority", "run_at"], :name => "delayed_jobs_priority"

  create_table "entry_details", :force => true do |t|
    t.integer  "user_id"
    t.string   "emp_id"
    t.string   "tower"
    t.string   "location"
    t.string   "odc_location"
    t.string   "tcs_bgc"
    t.string   "nda"
    t.string   "security_session"
    t.string   "mmo_bgc"
    t.string   "physical_access"
    t.string   "logical_access"
    t.string   "mailing_group"
    t.string   "mmo_id"
    t.string   "laptop"
    t.string   "application_access"
    t.string   "smart_card"
    t.string   "elearning"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "test_users", :force => true do |t|
    t.string   "email"
    t.string   "emp_id"
    t.string   "emp_name"
    t.string   "card_no"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "emp_id"
    t.string   "emp_name"
    t.string   "card_no"
  end

end
