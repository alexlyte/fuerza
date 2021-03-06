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

ActiveRecord::Schema.define(version: 20140120170441) do

  create_table "attendances", force: true do |t|
    t.integer  "attendee_id"
    t.integer  "attended_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "attendances", ["attended_id"], name: "index_attendances_on_attended_id"
  add_index "attendances", ["attendee_id", "attended_id"], name: "index_attendances_on_attendee_id_and_attended_id", unique: true
  add_index "attendances", ["attendee_id"], name: "index_attendances_on_attendee_id"

  create_table "events", force: true do |t|
    t.string   "name"
    t.datetime "datetime"
    t.string   "location"
    t.string   "contact"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "events"
    t.text     "description"
    t.string   "codeword"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "type"
  end

  add_index "events", ["datetime"], name: "index_events_on_datetime", unique: true
  add_index "events", ["name"], name: "index_events_on_name", unique: true

  create_table "microposts", force: true do |t|
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "microposts", ["user_id", "created_at"], name: "index_microposts_on_user_id_and_created_at"

  create_table "relationships", force: true do |t|
    t.integer  "follower_id"
    t.integer  "followed_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "relationships", ["followed_id"], name: "index_relationships_on_followed_id"
  add_index "relationships", ["follower_id", "followed_id"], name: "index_relationships_on_follower_id_and_followed_id", unique: true
  add_index "relationships", ["follower_id"], name: "index_relationships_on_follower_id"

  create_table "updates", force: true do |t|
    t.string   "content"
    t.integer  "event_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "updates", ["event_id", "created_at"], name: "index_updates_on_event_id_and_created_at"

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",               default: false
    t.string   "secret"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.text     "classes"
    t.text     "interests"
    t.text     "about"
    t.string   "year"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["remember_token"], name: "index_users_on_remember_token"

end
