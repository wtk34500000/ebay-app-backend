class Api::V1::ProductsController < ApplicationController
    skip_before_action :authorized, only: %i[create]
    def create
        
        @product = Product.create(product_params)
        if @product.valid?
            render json: {product: ProductSerializer.new(@product)}
        end
    end


    private
    def product_params
        params.require(:product).permit(:title, :price, :img, :item_id)
    end
end
