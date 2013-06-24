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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130624025451) do

  create_table "estudiantes", :force => true do |t|
    t.string   "nombre"
    t.string   "documento"
    t.string   "email"
    t.string   "tell1"
    t.string   "cel"
    t.date     "fechana"
    t.string   "direccion"
    t.string   "nomfam"
    t.string   "tell2"
    t.integer  "grupo_id"
    t.integer  "tpodocumento_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "estudiantes", ["grupo_id"], :name => "index_estudiantes_on_grupo_id"
  add_index "estudiantes", ["tpodocumento_id"], :name => "index_estudiantes_on_tpodocumento_id"

  create_table "grupos", :force => true do |t|
    t.string   "ficha"
    t.integer  "programa_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "grupos", ["programa_id"], :name => "index_grupos_on_programa_id"

  create_table "programas", :force => true do |t|
    t.string   "nombre"
    t.float    "precio"
    t.text     "observaciones"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "tpodocumentos", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
