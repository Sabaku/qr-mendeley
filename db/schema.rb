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

ActiveRecord::Schema.define(:version => 20110611202518) do

  create_table "affiliations", :force => true do |t|
    t.string   "name",       :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "affiliations", ["name"], :name => "index_affiliations_on_name", :unique => true

  create_table "authors", :force => true do |t|
    t.string   "name",       :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "authors", ["name"], :name => "index_authors_on_name", :unique => true

  create_table "events", :force => true do |t|
    t.string   "name",       :default => "f"
    t.datetime "start_date",                  :null => false
    t.datetime "event_date",                  :null => false
    t.string   "location"
    t.string   "homepage"
    t.string   "hashtag"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "poster_authors", :force => true do |t|
    t.integer  "poster_id",      :null => false
    t.integer  "author_id",      :null => false
    t.integer  "affiliation_id", :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "poster_authors", ["poster_id", "author_id"], :name => "poster_authors_ids_index", :unique => true
  add_index "poster_authors", ["poster_id"], :name => "index_poster_authors_on_poster_id"

  create_table "posters", :force => true do |t|
    t.string   "title",        :null => false
    t.text     "abstract",     :null => false
    t.string   "download_url", :null => false
    t.integer  "event_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "posters", ["event_id"], :name => "index_posters_on_event_id"

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

end
