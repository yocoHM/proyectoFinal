class ProdLoc < ActiveRecord::Base
	belongs_to :producto
	belongs_to :localidad

	VALID_NUMBER_REGEX = /(^\d*\.?\d*[0-9]+\d*$)|(^[0-9]+\d*\.\d*$)/
	validates_numericality_of :m2
	validates :m2, presence: true, format: { with: VALID_NUMBER_REGEX}
end
