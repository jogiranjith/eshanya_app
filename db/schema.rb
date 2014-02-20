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

ActiveRecord::Schema.define(version: 20140220034553) do

  create_table "admin_users", force: true do |t|
    t.string   "first_name",      default: "",    null: false
    t.string   "last_name",       default: "",    null: false
    t.string   "role",                            null: false
    t.string   "email",                           null: false
    t.boolean  "status",          default: false
    t.string   "token",                           null: false
    t.string   "password_digest",                 null: false
    t.string   "preferences"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree

  create_table "categories", force: true do |t|
    t.string   "name"
    t.text     "image"
    t.text     "description"
    t.boolean  "classic"
    t.boolean  "contemporary"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "devise_users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "devise_users", ["email"], name: "index_devise_users_on_email", unique: true, using: :btree
  add_index "devise_users", ["reset_password_token"], name: "index_devise_users_on_reset_password_token", unique: true, using: :btree

  create_table "products", force: true do |t|
    t.string   "name"
    t.string   "height"
    t.string   "width"
    t.string   "price"
    t.text     "image"
    t.integer  "category_id"
    t.integer  "sub_category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sub_categories", force: true do |t|
    t.string   "name"
    t.text     "image"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name",                   default: ""
    t.string   "username",               default: ""
    t.string   "email",                  default: ""
    t.string   "about",                  default: ""
    t.string   "encrypted_password",     default: ""
    t.string   "city",                   default: ""
    t.string   "reset_password_token"
    t.time     "reset_password_sent_at"
    t.time     "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.time     "current_sign_in_at"
    t.time     "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "stripe_customer_id"
    t.boolean  "deleted",                default: false
    t.string   "confirmation_token"
    t.time     "confirmed_at"
    t.time     "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0
    t.string   "unlock_token"
    t.time     "locked_at"
    t.string   "authentication_token"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "variationimages", force: true do |t|
    t.text     "variation_images"
    t.integer  "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
