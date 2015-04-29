class PedidoLoc < ActiveRecord::Base
	belongs_to :pedido 
	belongs_to :localidad
end
