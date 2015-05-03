class Producto < ActiveRecord::Base
	belongs_to :linea
	has_many :pedidos
	has_many :prod_locs
	has_many :localidades, :through => :prod_locs
	
	#validaciones
	validates :nombre, presence: true
	validates :presentacion, presence: true
	VALID_NUMBER_REGEX = /(^\d*\.?\d*[0-9]+\d*$)|(^[0-9]+\d*\.\d*$)/
	validates :color, presence: true
	validates_numericality_of :m2
	validates :m2, format: { with: VALID_NUMBER_REGEX}
	validates_numericality_of :precio
	validates :precio, presence: true, format: { with: VALID_NUMBER_REGEX}
end
