
class Api::V1::PaymentController < ApplicationController
    skip_before_action :authorized, only: %i[payment]


def payment
    Stripe.api_key = 'sk_test_WfyBeqgVHRFSUAcEzbJemxUp00LS98YawS'
    token = params[:stripeToken]

    @charge = Stripe::Charge.create({
        amount: (params[:amount].to_i)*100,
        currency: 'usd',
        description: 'Example charge',
        source: token,
    })
    puts @charge
    render json: @charge
end

end