class Empleado < ActiveRecord::Base
	has_many :obras

	#validaciones
	validates :nombre, presence: true
	validates :rfc, presence: true, uniqueness: {case_sensitive: false}, length: {maximum: 13, minimum: 12}
	validates :direccion, presence: true
	VALID_NUMBER_REGEX = /\A[+]?[0-9]*[0-9]+\Z/
	validates :telefono, presence: true, length: {minimum: 8, maximum: 15},
										uniqueness: {case_sensitive: false},
										format: { with: VALID_NUMBER_REGEX}
	validates :seguro_social, presence: true, length: {maximum: 11, minimum: 11},
										uniqueness: {case_sensitive: false},
										format: { with: VALID_NUMBER_REGEX}
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, length: { maximum: 105 },
									  uniqueness: { case_sensitive: false },
									  format: { with: VALID_EMAIL_REGEX }

	has_secure_password
end
