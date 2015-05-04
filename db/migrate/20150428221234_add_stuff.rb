class AddStuff < ActiveRecord::Migration
  def change
  	add_index :pedido_locs, :localidad_id
  	add_index :pedido_locs, :pedido_id

  	add_foreign_key :prod_locs, :productos
  	add_foreign_key :pedido_locs, :pedidos
  	add_foreign_key :pedido_locs, :localidads

  	add_column :productos, :precio, :float
  	add_column :empleados, :mail, :string
  	add_column :empleados, :clave, :string
  end
end
