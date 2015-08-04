class IngredientsController < ApplicationController
before_filter :require_login, only:[:destroy]	
	def show
		@ingredient = Ingredient.find(params[:id])
	end

	def destroy
	end
end
