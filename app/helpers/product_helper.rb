module ProductHelper
	def product_params
		params.require(:product).permit(:brand, :name, :image, :ingredient_list)
	end
end
