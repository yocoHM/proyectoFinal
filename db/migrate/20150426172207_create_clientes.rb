class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nombre
      t.string :rfc
      t.string :direccion
      t.string :telefono
      t.string :contacto

      t.timestamps null: false
    end
  end
end
