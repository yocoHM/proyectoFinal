class Empleado < ActiveRecord::Base
	has_many :obras

	#validaciones
	validates :nombre, presence: true
	validates :rfc, presence: true
	validates :direccion, presence: true
	validates :telefono, presence: true
	validates :seguro_social, presence: true
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, length: { maximum: 105 },
									  uniqueness: { case_sensitive: false },
									  format: { with: VALID_EMAIL_REGEX }

	has_secure_password
end
