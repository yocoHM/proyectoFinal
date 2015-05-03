class Proveedor < ActiveRecord::Base
	has_many :lineas

	#validaciones
	validates :nombre, presence: true
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :correo, presence: true, length: { maximum: 105 },
									  uniqueness: { case_sensitive: false },
									  format: { with: VALID_EMAIL_REGEX }
	validates :pais, presence: true
	VALID_WEB_REGEX = /\A((http|https):\/\/)?[a-z0-9]+([-.]{1}[a-z0-9]+).[a-z]{2,5}(:[0-9]{1,5})?(\/.)?.[a-z]{2,5}(:[0-9]{1,5})?(\/.)?\z/ix
	validates :web, format: { with: VALID_WEB_REGEX}
	VALID_NUMBER_REGEX = /\A[+]?[0-9]*[0-9]+\Z/
	validates :telefono, presence: true, length: {minimum:8, maximum: 15},
										uniqueness: {case_sensitive: false},
										format: { with: VALID_NUMBER_REGEX}
end
