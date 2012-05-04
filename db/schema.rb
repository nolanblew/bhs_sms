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

ActiveRecord::Schema.define(:version => 20120503223348) do

  create_table "instruments", :force => true do |t|
    t.integer  "student_id"
    t.string   "instrument"
    t.string   "instrument_number"
    t.string   "description"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "instruments", ["student_id"], :name => "index_instruments_on_student_id"

  create_table "languages", :force => true do |t|
    t.string   "name"
    t.string   "abbr"
    t.boolean  "available"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "parents", :force => true do |t|
    t.integer  "student_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "cell"
    t.integer  "language"
    t.string   "relationship"
    t.boolean  "primary_contact", :default => true
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
  end

  add_index "parents", ["student_id"], :name => "index_parents_on_student_id"

  create_table "role_attributes", :force => true do |t|
    t.string   "role_id"
    t.string   "key"
    t.boolean  "value"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "role_models", :force => true do |t|
    t.string   "key"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "students", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "graduation"
    t.string   "email"
    t.string   "cell"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "uniform_damages", :force => true do |t|
    t.integer  "uniform_id"
    t.integer  "student_id"
    t.string   "description"
    t.boolean  "fixed"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "uniform_damages", ["student_id"], :name => "index_uniform_damages_on_student_id"
  add_index "uniform_damages", ["uniform_id"], :name => "index_uniform_damages_on_uniform_id"

  create_table "uniforms", :force => true do |t|
    t.integer  "number"
    t.integer  "student_id"
    t.string   "height"
    t.string   "waist"
    t.string   "other"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "uniforms", ["student_id"], :name => "index_uniforms_on_student_id"

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.integer  "role_id"
    t.string   "remember_token"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
