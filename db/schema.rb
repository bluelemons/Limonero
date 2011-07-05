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

ActiveRecord::Schema.define(:version => 20110705004122) do

  create_table "blocks", :force => true do |t|
    t.string   "name"
    t.string   "ubicacion"
    t.integer  "superficie"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "debts", :force => true do |t|
    t.integer  "payment_id"
    t.integer  "monto_cents"
    t.string   "monto_currency", :limit => 3
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lots", :force => true do |t|
    t.integer  "block_id"
    t.string   "direccion"
    t.integer  "superficie"
    t.integer  "payment_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "payments", :force => true do |t|
    t.integer  "cuotas"
    t.date     "inicio"
    t.integer  "person_id"
    t.float    "interes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pays", :force => true do |t|
    t.integer  "debt_id"
    t.date     "fecha_de_pago"
    t.integer  "monto_cents"
    t.string   "monto_currency", :limit => 3
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people", :force => true do |t|
    t.string   "name"
    t.string   "direccion"
    t.string   "localidad"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
