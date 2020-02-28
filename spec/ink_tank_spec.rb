ENV['APP_ENV'] = 'test'

require '././ink_tank_be'
require 'rspec'
require 'rack/test'
require 'pry'

RSpec.describe 'The Ink Tank' do
  describe InkTankBE do
  def app
    Sinatra::Application
  end
end
end
