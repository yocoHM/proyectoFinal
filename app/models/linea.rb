class Linea < ActiveRecord::Base
	belongs_to :proveedor
	has_many :productos

	#validaciones
	validates :nombre, presence: true
end
