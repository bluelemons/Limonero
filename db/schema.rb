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

ActiveRecord::Schema.define(:version => 20110921181108) do

  create_table "compradores", :id => false, :force => true do |t|
    t.integer "person_id"
    t.integer "contrato_id"
  end

  create_table "contratos", :force => true do |t|
    t.date     "inicio"
    t.integer  "lote_id"
    t.integer  "ncuotas"
    t.decimal  "cuota",         :precision => 10, :scale => 2
    t.decimal  "cuota_inicial", :precision => 10, :scale => 2
    t.decimal  "interes",       :precision => 6,  :scale => 3
    t.text     "observaciones"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "loteos", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lotes", :force => true do |t|
    t.integer  "loteo_id"
    t.string   "manzana"
    t.string   "parcela"
    t.string   "partida"
    t.integer  "ncuotas"
    t.decimal  "cuota",         :precision => 10, :scale => 2
    t.decimal  "cuota_inicial", :precision => 10, :scale => 2
    t.decimal  "interes",       :precision => 6,  :scale => 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pagos", :force => true do |t|
    t.integer  "contrato_id"
    t.decimal  "monto",       :precision => 7, :scale => 2
    t.decimal  "recargo",     :precision => 7, :scale => 2
    t.decimal  "tasa",        :precision => 7, :scale => 2
    t.decimal  "api",         :precision => 7, :scale => 2
    t.decimal  "otro",        :precision => 7, :scale => 2
    t.date     "fecha"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "personas_addresses", :force => true do |t|
    t.string   "street"
    t.integer  "number"
    t.string   "other"
    t.string   "email"
    t.string   "telefono"
    t.integer  "taddress_id"
    t.integer  "person_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "personas_civils", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "personas_people", :force => true do |t|
    t.string   "name"
    t.date     "born"
    t.string   "doc"
    t.date     "dead"
    t.text     "observations"
    t.integer  "civil_id"
    t.integer  "tdoc_id"
    t.integer  "city_id"
    t.integer  "sexo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "personas_sexos", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "personas_taddresses", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "personas_tdocs", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
