class CreateEmpleados < ActiveRecord::Migration
  def change
    create_table :empleados do |t|
      t.string :nombre
      t.string :rfc
      t.string :direccion
      t.string :telefono
      t.string :seguro_social

      t.timestamps null: false
    end
  end
end
