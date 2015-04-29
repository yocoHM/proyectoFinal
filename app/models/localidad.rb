class Localidad < ActiveRecord::Base
	belongs_to :obra
	has_many :prod_locs
	has_many :productos, :through => :prod_locs

	has_many :pedido_locs
	has_many :pedidos, :through => :pedido_locs

	#validaciones
	validates :direccion, presence: true
end
