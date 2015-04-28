class Proveedor < ActiveRecord::Base
	has_many :lineas

	#validaciones
	validates :nombre, presence: true
	validates :correo, presence: true
	validates :pais, presence: true
end
