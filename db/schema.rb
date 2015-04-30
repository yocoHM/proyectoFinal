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

ActiveRecord::Schema.define(version: 20150430171135) do

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
    t.string   "email"
  end

  create_table "empleados", force: :cascade do |t|
    t.string   "nombre"
    t.string   "rfc"
    t.string   "direccion"
    t.string   "telefono"
    t.string   "seguro_social"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "email"
    t.string   "password_digest"
    t.boolean  "admin",           default: false
  end

  create_table "lineas", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "proveedor_id"
  end

  add_index "lineas", ["proveedor_id"], name: "index_lineas_on_proveedor_id", using: :btree

  create_table "localidads", force: :cascade do |t|
    t.string   "direccion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "obra_id"
  end

  add_index "localidads", ["obra_id"], name: "index_localidads_on_obra_id", using: :btree

  create_table "obras", force: :cascade do |t|
    t.date     "inicio"
    t.date     "entrega"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "cliente_id"
    t.integer  "empleado_id"
  end

  add_index "obras", ["cliente_id"], name: "index_obras_on_cliente_id", using: :btree
  add_index "obras", ["empleado_id"], name: "index_obras_on_empleado_id", using: :btree

  create_table "pedido_locs", force: :cascade do |t|
    t.integer  "localidad_id"
    t.integer  "pedido_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "pedido_locs", ["localidad_id"], name: "index_pedido_locs_on_localidad_id", using: :btree
  add_index "pedido_locs", ["pedido_id"], name: "index_pedido_locs_on_pedido_id", using: :btree

  create_table "pedidos", force: :cascade do |t|
    t.float    "m2"
    t.date     "orden"
    t.date     "recibido"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "producto_id"
  end

  add_index "pedidos", ["producto_id"], name: "index_pedidos_on_producto_id", using: :btree

  create_table "prod_locs", force: :cascade do |t|
    t.float    "m2"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "producto_id"
    t.integer  "localidad_id"
  end

  add_index "prod_locs", ["localidad_id"], name: "index_prod_locs_on_localidad_id", using: :btree
  add_index "prod_locs", ["producto_id"], name: "index_prod_locs_on_producto_id", using: :btree

  create_table "productos", force: :cascade do |t|
    t.string   "nombre"
    t.string   "presentacion"
    t.string   "especificaciones"
    t.string   "color"
    t.float    "m2"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "linea_id"
    t.float    "precio"
  end

  add_index "productos", ["linea_id"], name: "index_productos_on_linea_id", using: :btree

  create_table "proveedors", force: :cascade do |t|
    t.string   "nombre"
    t.string   "correo"
    t.string   "direccion"
    t.string   "pais"
    t.string   "web"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "lineas", "proveedors"
  add_foreign_key "localidads", "obras"
  add_foreign_key "obras", "clientes"
  add_foreign_key "obras", "empleados"
  add_foreign_key "pedido_locs", "localidads"
  add_foreign_key "pedido_locs", "pedidos"
  add_foreign_key "pedidos", "productos"
  add_foreign_key "prod_locs", "localidads"
  add_foreign_key "prod_locs", "productos"
  add_foreign_key "productos", "lineas"
end
