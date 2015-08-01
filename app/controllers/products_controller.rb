class ProductsController < ApplicationController
	include ProductHelper
	def index
		@products = Product.all
	end

	def new
		@product = Product.new
	end

	def create
		@product = Product.new(product_params)
		@product.save

		redirect_to products_path(@product)
	end

	def show
		@product = Product.find(params[:id])
	end

	def destroy
		@product = Product.find(params[:id])
		@product.destroy

		redirect_to products_path
	end
end
