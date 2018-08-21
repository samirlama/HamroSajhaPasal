class ProductsController < ApplicationController
	def index
		@category = Category.find(params[:category_id])
		@products  = @category.products.all
	end	
	def create
		@products = Product.create(product_params)
		if @products.valid?
			redirect_to root_path
		end	
	end	
	private 
	def product_params
		params.require(:product).permit(:product_name , :avatar , :description , :category_id , :brand_id )
	end

end
