class ForeignKeys < ActiveRecord::Migration
  def change

  	add_column :prod_locs, :producto_id, :integer
  	add_column :prod_locs, :localidad_id, :integer
  	add_column :pedido_obras, :obra_id, :integer
  	add_column :pedido_obras, :pedido_id, :integer

add_index :obras, :cliente_id
  	add_index :obras, :empleado_id
  	add_index :lineas, :proveedor_id 
  	add_index :localidads, :obra_id
  	add_index :productos, :linea_id
  	add_index :pedido_obras, :obra_id
  	add_index :pedido_obras, :pedido_id
  	add_index :prod_locs, :producto_id
  	add_index :prod_locs, :localidad_id

  	add_foreign_key :obras, :clientes
  	add_foreign_key :obras, :empleados
  	add_foreign_key :lineas, :proveedors
  	add_foreign_key :localidads, :obras
  	add_foreign_key :pedido_obras, :pedidos
  	add_foreign_key :pedido_obras, :obras
  	add_foreign_key :productos, :lineas
  	add_foreign_key :prod_locs, :productos
  	add_foreign_key :prod_locs, :localidads
  	  	add_column :pedidos, :producto_id, :integer
  	add_index :pedidos, :producto_id
  	add_foreign_key :pedidos, :productos
  end
end
