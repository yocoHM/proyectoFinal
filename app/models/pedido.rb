class Pedido < ActiveRecord::Base
	belongs_to :producto
	has_many :pedido_obras
	has_many :obras, :through => :pedido_obras

	#validaciones
	validates :m2, presence: true
	validates :orden, presence: true
end
