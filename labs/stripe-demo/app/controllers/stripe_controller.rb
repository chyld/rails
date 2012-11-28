class StripeController < ApplicationController
  def new
  end
  def create
    #amount"=>"500", "token"=>"tok_0oqsFQtC1cqPAK"
    amount = params[:amount].to_i * 100
    token = params[:token]

    begin
      @stripe = Stripe::Charge.create(
        :amount      => amount,
        :card        => token,
        :description => 'Rails Stripe customer',
        :currency    => 'usd'
      )
    rescue => e
      @error = e.message
    end
  end
end
