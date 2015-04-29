class Pedido < ActiveRecord::Base
	belongs_to :producto
	has_many :pedido_locs
	has_many :localidads, :through => :pedido_locs

	#validaciones
	validates :m2, presence: true
	validates :orden, presence: true
end
