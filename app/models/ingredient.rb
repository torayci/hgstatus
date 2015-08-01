class Ingredient < ActiveRecord::Base
	has_many :formulas
	has_many :products, through: :formulas

	def to_s
		name
	end
end
