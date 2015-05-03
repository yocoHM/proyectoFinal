class TelefonoProveedor < ActiveRecord::Migration
  def change
  	add_column :proveedors, :telefono, :string
  end
end
