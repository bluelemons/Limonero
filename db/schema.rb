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

ActiveRecord::Schema.define(:version => 20110708171828) do

  create_table "addresses", :force => true do |t|
    t.string   "calle"
    t.string   "numero"
    t.string   "otro"
    t.string   "telefono"
    t.integer  "person_id"
    t.integer  "taddress_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "avaluos", :force => true do |t|
    t.integer  "ncuotas"
    t.integer  "couta_cents"
    t.string   "cuota_currency"
    t.string   "interes"
    t.integer  "lot_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "civils", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contratos", :force => true do |t|
    t.integer  "payment_id"
    t.integer  "person_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "debts", :force => true do |t|
    t.integer  "payment_id"
    t.integer  "monto_cents"
    t.string   "monto_currency"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "localidads", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lots", :force => true do |t|
    t.string   "manzana"
    t.string   "loteo"
    t.string   "parcela"
    t.string   "partida"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "matrimonios", :force => true do |t|
    t.date     "nupcias"
    t.integer  "person_id"
    t.integer  "person_id1"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "nacionalidads", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "payments", :force => true do |t|
    t.date     "inicio"
    t.integer  "avaluo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pays", :force => true do |t|
    t.integer  "debt_id"
    t.date     "fecha_de_pago"
    t.integer  "monto_cents"
    t.string   "monto_currency"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people", :force => true do |t|
    t.string   "apellido"
    t.string   "apellido_materno"
    t.string   "nombre"
    t.date     "nacimiento"
    t.string   "documento"
    t.integer  "nacionalidad_id"
    t.integer  "civil_id"
    t.text     "observaciones"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "taddresses", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tdocs", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
