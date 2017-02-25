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

ActiveRecord::Schema.define(version: 20170224180931) do

  create_table "associados", force: :cascade do |t|
    t.integer  "user_id",         limit: 4
    t.date     "data_cadastro"
    t.date     "data_vencimento"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "delegados", force: :cascade do |t|
    t.string   "nome",       limit: 255
    t.string   "email",      limit: 255
    t.string   "local",      limit: 255
    t.string   "id_wca",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "eventos", force: :cascade do |t|
    t.string   "nome",         limit: 255
    t.date     "data_inicio"
    t.date     "data_fim"
    t.string   "local",        limit: 255
    t.string   "endereco",     limit: 255
    t.string   "site",         limit: 255
    t.text     "intro",        limit: 65535
    t.text     "modalidades",  limit: 65535
    t.text     "cronograma",   limit: 65535
    t.text     "inscricoes",   limit: 65535
    t.text     "resultados",   limit: 65535
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "codigo",       limit: 255
    t.boolean  "site_externo"
  end

  create_table "noticias", force: :cascade do |t|
    t.string   "titulo",     limit: 255,                  null: false
    t.string   "slug",       limit: 255,   default: "",   null: false
    t.text     "texto",      limit: 65535
    t.boolean  "visivel",                  default: true
    t.integer  "id_autor",   limit: 4
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
  end

  create_table "users", force: :cascade do |t|
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
    t.string   "confirmation_token",     limit: 255
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "nome",                   limit: 255
    t.string   "tipo",                   limit: 255
    t.string   "cidade",                 limit: 255
    t.string   "estado",                 limit: 255
    t.string   "id_wca",                 limit: 255
    t.string   "id_forum",               limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
