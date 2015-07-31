class ProductController < ApplicationController
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

		redirect_to product_path(@product)
	end

	def show
		@product = Product.find(params[:id])
	end

	def destroy
		@product = Product.find(params[:id])
		@product.destroy

		redirect_to product_index_path
	end
end
