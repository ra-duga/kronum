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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20160220122108) do
=======
ActiveRecord::Schema.define(version: 20160211075735) do
>>>>>>> CreateOffers

  create_table "agents", force: :cascade do |t|
    t.string   "name"
    t.string   "low_name"
    t.string   "adress"
    t.string   "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text     "comment"
  end

  create_table "buildings", force: :cascade do |t|
    t.integer  "developer_id"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "buildings", ["developer_id"], name: "index_buildings_on_developer_id"

  create_table "comissions", force: :cascade do |t|
    t.float    "value"
    t.text     "comment"
    t.integer  "agent_id"
    t.integer  "building_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.date     "set_date"
  end

  add_index "comissions", ["agent_id"], name: "index_comissions_on_agent_id"
  add_index "comissions", ["building_id"], name: "index_comissions_on_building_id"

  create_table "corpus", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.date     "end_date_build"
    t.integer  "building_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "abcid"
  end

  add_index "corpus", ["building_id"], name: "index_corpus_on_building_id"

  create_table "corpus_offers", id: false, force: :cascade do |t|
<<<<<<< HEAD
    t.integer "corpu_id", null: false
    t.integer "offer_id", null: false
  end

  add_index "corpus_offers", ["corpu_id", "offer_id"], name: "index_corpus_offers_on_corpu_id_and_offer_id"
  add_index "corpus_offers", ["offer_id", "corpu_id"], name: "index_corpus_offers_on_offer_id_and_corpu_id"
=======
    t.integer "offers_id"
    t.integer "corpus_id"
  end

  add_index "corpus_offers", ["corpus_id"], name: "index_corpus_offers_on_corpus_id"
  add_index "corpus_offers", ["offers_id"], name: "index_corpus_offers_on_offers_id"
>>>>>>> CreateOffers

  create_table "developers", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "logo_url"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "adress"
    t.integer  "created_by"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

<<<<<<< HEAD
  create_table "offer_categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "offers", force: :cascade do |t|
    t.string   "name"
    t.text     "text"
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "user_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "offer_categories_id"
  end

  add_index "offers", ["offer_categories_id"], name: "index_offers_on_offer_categories_id"
  add_index "offers", ["user_id"], name: "index_offers_on_user_id"

=======
  create_table "offers", force: :cascade do |t|
    t.string   "title"
    t.text     "text"
    t.date     "start_date"
    t.date     "and_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

>>>>>>> CreateOffers
  create_table "roles", force: :cascade do |t|
    t.string   "name",        default: "", null: false
    t.string   "description", default: "", null: false
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "name",                   default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "role_id"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["role_id"], name: "index_users_on_role_id"

end
