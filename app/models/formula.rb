class Formula < ActiveRecord::Base
	belongs_to :product
	belongs_to :ingredient
end
