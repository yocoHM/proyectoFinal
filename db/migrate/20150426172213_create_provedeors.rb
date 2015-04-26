class CreateProvedeors < ActiveRecord::Migration
  def change
    create_table :provedeors do |t|
      t.string :nombre
      t.string :correo
      t.string :direccion
      t.string :pais
      t.string :web

      t.timestamps null: false
    end
  end
end
