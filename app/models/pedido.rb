class Pedido < ActiveRecord::Base
	belongs_to :producto
	has_many :pedido_locs
	has_many :localidads, :through => :pedido_locs

	#validaciones
	VALID_NUMBER_REGEX = /(^\d*\.?\d*[0-9]+\d*$)|(^[0-9]+\d*\.\d*$)/
	validates_numericality_of :m2
	validates :m2, presence: true, format: { with: VALID_NUMBER_REGEX}
	validates :orden, presence: true
end
