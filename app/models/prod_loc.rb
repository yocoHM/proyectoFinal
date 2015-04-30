class ProdLoc < ActiveRecord::Base
	belongs_to :producto
	belongs_to :localidad
end
