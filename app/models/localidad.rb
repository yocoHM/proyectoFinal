class Localidad < ActiveRecord::Base
	belongs_to :obra
	has_many :prod_locs
	has_many :productos, :through => :prod_locs

	#validaciones
	validates :direccion, presence: true
end
