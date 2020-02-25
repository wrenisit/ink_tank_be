require 'sinatra/base'
require 'stripe'
require 'pry'

class InkTankBE < Sinatra::Base
  post '/payments' do
    # param_amount = params[:amount]
    # param_source = params[:source]
    binding.pry
    Stripe.api_key = ENV['STRIPE_KEY']
    charge = Stripe::Charge.create({amount: '20000', currency: 'usd', source: 'tok_mastercard'})
  end
end

# FE
# conn = Faraday.new(myherokuapp.url)
# conn.post('/payments') do |f|
#   f.body = {all the info goes here
#   }.to_json
