class CreateLocalidads < ActiveRecord::Migration
  def change
    create_table :localidads do |t|
      t.string :direccion

      t.timestamps null: false
    end
  end
end
