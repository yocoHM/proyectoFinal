class Empleado < ActiveRecord::Base
	has_many :obras

	#validaciones
	validates :nombre, presence: true
	validates :rfc, presence: true
	validates :direccion, presence: true
	validates :telefono, presence: true
	validates :seguro_social, presence: true
end
