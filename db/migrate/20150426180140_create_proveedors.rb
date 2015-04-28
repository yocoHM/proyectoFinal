class CreateProveedors < ActiveRecord::Migration
  def change
    create_table :proveedors do |t|
      t.string :nombre
      t.string :correo
      t.string :direccion
      t.string :pais
      t.string :web

      t.timestamps null: false
    end
  end
end
