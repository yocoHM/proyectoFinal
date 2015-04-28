class AddLineas < ActiveRecord::Migration
  def change
  	add_column :lineas, :proveedor_id, :integer
  	add_column :productos, :linea_id, :integer
  	add_column :obras, :cliente_id, :integer
  	add_column :obras, :empleado_id, :integer
  	add_column :localidads, :obra_id, :integer
  	add_column :prod_locs, :producto_id, :integer
  	add_column :prod_locs, :localidad_id, :integer
  	add_column :pedido_obras, :obra_id, :integer
  	add_column :pedido_obras, :pedido_id, :integer

  end
end
