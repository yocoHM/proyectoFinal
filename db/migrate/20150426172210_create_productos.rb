class CreateProductos < ActiveRecord::Migration
  def change
    create_table :productos do |t|
      t.string :nombre
      t.string :presentacion
      t.string :especificaciones
      t.string :color
      t.float :m2

      t.timestamps null: false
    end
  end
end
