class Producto < ActiveRecord::Base
	belongs_to :linea
	has_many :pedidos
	has_many :prod_locs
	has_many :localidades, :through => :prod_locs
	

end
