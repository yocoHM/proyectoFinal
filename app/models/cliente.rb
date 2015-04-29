class Cliente < ActiveRecord::Base
	has_many :obras

	#validaciones
	validates :nombre, presence: true
	validates :rfc, presence: true
	validates :direccion, presence: true
	validates :telefono, presence: true

	def self.search(query)
		where("lower(nombre) like lower(:query) or rfc like :query or lower(direccion) like :query or telefono like :query",query: "%#{query}%")
	end
end
