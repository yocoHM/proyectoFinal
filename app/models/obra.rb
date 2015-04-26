class Obra < ActiveRecord::Base
	belongs_to :cliente
	belongs_to :empleado
	has_many :localidades
	has_many :pedido_obras
	has_many :pedidos, :through => :pedido_obras
end
