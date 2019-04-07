class Api::V1::OrdersController < ApplicationController
    skip_before_action :authorized, only: [:create, :index]

    def index
        @orders=Order.all 
        render json: @orders
    end

    def create
        @order = Order.create(order_params)
        if @order.valid?
            render json: {order: OrderSerializer.new(@order)}
        end
    end


    private
    def order_params
        params.require(:order).permit(:user_id, :product_id)
    end
end
