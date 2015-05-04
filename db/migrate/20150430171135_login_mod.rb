class LoginMod < ActiveRecord::Migration
  def change
  	add_column :empleados, :admin, :bool, default: false
  	rename_column :empleados, :clave, :password_digest
  end
end
