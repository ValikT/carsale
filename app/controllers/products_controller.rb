class ProductsController < ApplicationController

	def show
		@product=Product.find(params[:id])
		@order=Order.where(product_id: product).first
	end

	def edit
		@product=Product.find(params[:id])
	end

	def update
		@product=Product.find(params[:id])
		@product.update(product_params)
	end

private
	def product_params
		params.require(:product).permit(:name,:description,:image)
	end

end