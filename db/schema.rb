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

ActiveRecord::Schema.define(version: 20140905181415) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "agencies", force: true do |t|
    t.integer  "legislation_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "agencies", ["legislation_id"], name: "index_agencies_on_legislation_id", using: :btree

  create_table "articles", force: true do |t|
    t.string   "title"
    t.text     "first_paragraph"
    t.date     "publication_date"
    t.string   "url"
    t.string   "source"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "articles_legislations", force: true do |t|
    t.integer  "article_id"
    t.integer  "legislation_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "articles_legislations", ["article_id"], name: "index_articles_legislations_on_article_id", using: :btree
  add_index "articles_legislations", ["legislation_id"], name: "index_articles_legislations_on_legislation_id", using: :btree

  create_table "legislations", force: true do |t|
    t.string   "title"
    t.date     "proposal_date"
    t.date     "publication_date"
    t.date     "congress_voting_date"
    t.date     "senate_voting_date"
    t.date     "president_signing_date"
    t.text     "abstract"
    t.string   "url"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
