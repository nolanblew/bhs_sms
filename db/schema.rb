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

ActiveRecord::Schema.define(:version => 20120503022541) do

  create_table "instruments", :force => true do |t|
    t.integer  "student_id"
    t.string   "instrument"
    t.string   "instrument_number"
    t.string   "description"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "languages", :force => true do |t|
    t.string   "name"
    t.string   "abbr"
    t.boolean  "available"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "students", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "graduation"
    t.string   "email"
    t.string   "cell"
    t.string   "parent1_first_name"
    t.string   "parent1_last_name"
    t.string   "parent1_email"
    t.string   "parent1_cell"
    t.integer  "parent1_language"
    t.string   "parent2_first_name"
    t.string   "parent2_last_name"
    t.string   "parent2_email"
    t.string   "parent2_cell"
    t.integer  "parent2_language"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "uniform_damages", :force => true do |t|
    t.integer  "uniform_id"
    t.integer  "student_id"
    t.string   "description"
    t.boolean  "fixed"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "uniforms", :force => true do |t|
    t.integer  "number"
    t.integer  "student_id"
    t.string   "height"
    t.string   "waist"
    t.string   "other"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
