class Obra < ActiveRecord::Base
	belongs_to :cliente
	belongs_to :empleado
	has_many :localidads

	#validaciones
	validates :inicio, presence: true
	validates :entrega, presence: true
	validates :cliente, presence: true


end
