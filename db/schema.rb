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

ActiveRecord::Schema.define(version: 20171009134802) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.text "comentario"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "event_id"
    t.index ["event_id"], name: "index_comments_on_event_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "titulo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string "titulo"
    t.text "descripcion"
    t.date "fecha_contacto"
    t.string "nombre_contacto"
    t.string "numero_contacto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "shop_id"
    t.bigint "type_id"
    t.bigint "state_id"
    t.bigint "user_id"
    t.index ["shop_id"], name: "index_events_on_shop_id"
    t.index ["state_id"], name: "index_events_on_state_id"
    t.index ["type_id"], name: "index_events_on_type_id"
    t.index ["user_id"], name: "index_events_on_user_id"
  end

  create_table "models", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_models_on_email", unique: true
    t.index ["reset_password_token"], name: "index_models_on_reset_password_token", unique: true
  end

  create_table "shops", force: :cascade do |t|
    t.string "titulo"
    t.string "dir1"
    t.string "dir2"
    t.string "dir3"
    t.string "dir4"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "company_id"
    t.index ["company_id"], name: "index_shops_on_company_id"
  end

  create_table "states", force: :cascade do |t|
    t.string "titulo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "table_class"
  end

  create_table "types", force: :cascade do |t|
    t.string "titulo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "comments", "events"
  add_foreign_key "comments", "users"
  add_foreign_key "events", "shops"
  add_foreign_key "events", "states"
  add_foreign_key "events", "types"
  add_foreign_key "events", "users"
  add_foreign_key "shops", "companies"
end
