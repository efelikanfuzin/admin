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

ActiveRecord::Schema.define(version: 20160229081043) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string   "data_file_name",               null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], name: "idx_ckeditor_assetable", using: :btree
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], name: "idx_ckeditor_assetable_type", using: :btree

  create_table "films", force: :cascade do |t|
    t.string   "name"
    t.string   "info"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "preview"
  end

  create_table "pages", force: :cascade do |t|
    t.string   "name"
    t.string   "title"
    t.string   "description"
    t.string   "keywords"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "title"
    t.integer  "price"
    t.string   "description"
    t.string   "avatar"
    t.json     "photos"
    t.string   "status"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "products_type"
    t.string   "slug"
  end

  add_index "products", ["slug"], name: "index_products_on_slug", using: :btree

  create_table "projects", force: :cascade do |t|
    t.string "title"
    t.string "keywords"
    t.string "description"
    t.string "preview_img"
    t.text   "content"
    t.text   "preview"
  end

  create_table "stocks", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "price"
    t.integer  "sale_price"
    t.integer  "amount"
    t.string   "tags"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "preview"
    t.string   "features"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
