class PedidoObra < ActiveRecord::Base
	belongs_to :pedido 
	belongs_to :obra
end
