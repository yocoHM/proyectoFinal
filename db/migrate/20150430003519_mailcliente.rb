class Mailcliente < ActiveRecord::Migration
  def change
  	add_column :clientes, :email, :string
  	rename_column :empleados, :mail, :email
  end
end
