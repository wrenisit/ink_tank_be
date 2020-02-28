require 'sinatra/base'
require 'pry'

class InkTankBE < Sinatra::Base
  get '/advice' do
    advice = ["yes", "no", "but, why?", "your mother will hate it.", "fine.", "maybe?"]
    result = advice.sample
    result.to_json
  end
end
