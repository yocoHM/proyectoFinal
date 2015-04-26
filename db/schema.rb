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

ActiveRecord::Schema.define(version: 20150426180140) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clientes", force: :cascade do |t|
    t.string   "nombre"
    t.string   "rfc"
    t.string   "direccion"
    t.string   "telefono"
    t.string   "contacto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "empleados", force: :cascade do |t|
    t.string   "nombre"
    t.string   "rfc"
    t.string   "direccion"
    t.string   "telefono"
    t.string   "seguro_social"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "lineas", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "proveedor_id"
  end

  create_table "localidads", force: :cascade do |t|
    t.string   "direccion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "obra_id"
  end

  create_table "obras", force: :cascade do |t|
    t.date     "inicio"
    t.date     "entrega"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "cliente_id"
    t.integer  "empleado_id"
  end

  create_table "pedido_obras", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pedidos", force: :cascade do |t|
    t.float    "m2"
    t.date     "orden"
    t.date     "recibido"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "prod_locs", force: :cascade do |t|
    t.float    "m2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "productos", force: :cascade do |t|
    t.string   "nombre"
    t.string   "presentacion"
    t.string   "especificaciones"
    t.string   "color"
    t.float    "m2"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "linea_id"
  end

  create_table "provedeors", force: :cascade do |t|
    t.string   "nombre"
    t.string   "correo"
    t.string   "direccion"
    t.string   "pais"
    t.string   "web"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "proveedors", force: :cascade do |t|
    t.string   "nombre"
    t.string   "correo"
    t.string   "direccion"
    t.string   "pais"
    t.string   "web"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
