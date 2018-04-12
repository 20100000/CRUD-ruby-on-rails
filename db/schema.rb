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

ActiveRecord::Schema.define(version: 20180412141012) do

  create_table "admins", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree

  create_table "amigos", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "endereco",   limit: 255
    t.string   "email",      limit: 255
    t.string   "tel",        limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "anotacaos", force: :cascade do |t|
    t.text     "body",       limit: 65535
    t.integer  "amigo_id",   limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "anotacaos", ["amigo_id"], name: "index_anotacaos_on_amigo_id", using: :btree

  create_table "enderecos", force: :cascade do |t|
    t.string   "lagradouro", limit: 255
    t.string   "numero",     limit: 255
    t.string   "bairro",     limit: 255
    t.string   "cidade",     limit: 255
    t.string   "uf",         limit: 255
    t.integer  "amigo_id",   limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "enderecos", ["amigo_id"], name: "index_enderecos_on_amigo_id", using: :btree

  create_table "filhos", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "sexo",       limit: 255
    t.integer  "pai_id",     limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "filhos", ["pai_id"], name: "index_filhos_on_pai_id", using: :btree

  create_table "pais", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "email",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "statuses", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "tipos", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_foreign_key "enderecos", "amigos"
  add_foreign_key "filhos", "pais"
end
