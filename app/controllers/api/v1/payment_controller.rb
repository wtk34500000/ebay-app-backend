require 'dotenv/load'

class Api::V1::PaymentController < ApplicationController
    skip_before_action :authorized, only: %i[payment]


def payment
    Stripe.api_key = ENV["API_KEY"]
    token = params[:stripeToken]

    @charge = Stripe::Charge.create({
        amount: ((params[:amount].to_f).ceil)*100,
        currency: 'usd',
        description: 'Example charge',
        source: token,
    })
    render json: @charge
end

end