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

ActiveRecord::Schema.define(:version => 20110808134316) do

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
