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

	def edit
		@product = Product.find(params[:id])
	end

	def update
		@product = Product.find(params[:id])
		@product.update(product_params)

		flash.notice = "Product '#{@product.name}' Updated!"

		redirect_to products_path
	end

	def show
		@product = Product.find(params[:id])

		@review = Review.new
		@review.product_id = @product.id
	end

	def destroy
		@product = Product.find(params[:id])
		@product.destroy

		redirect_to products_path
	end
end
