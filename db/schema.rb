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

ActiveRecord::Schema.define(version: 20180403174919) do

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

  add_foreign_key "filhos", "pais"
end
