class Product < ActiveRecord::Base
	has_many :formulas
	has_many :ingredients, through: :formulas

	def ingredient_list=(ingredients_string)
		ingredient_names = ingredients_string.split(",").collect{|s| s.strip.downcase}.uniq
		new_or_found_ingredients = ingredient_names.collect { |name| Ingredient.find_or_create_by(name: name) }
		self.ingredients = new_or_found_ingredients
	end

	def ingredient_list
		ingredients.join(", ")
	end
end