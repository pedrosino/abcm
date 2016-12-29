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

ActiveRecord::Schema.define(version: 20161229164934) do

  create_table "associados", force: :cascade do |t|
    t.string   "nome",            limit: 255
    t.string   "email",           limit: 255
    t.string   "cpf",             limit: 255
    t.string   "identidade",      limit: 255
    t.string   "endereco",        limit: 255
    t.string   "id_wca",          limit: 255
    t.string   "id_forum",        limit: 255
    t.date     "data_cadastro"
    t.date     "data_vencimento"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
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

end
