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
  include Rack::Test::Methods
    let(:ink_tank_be) { InkTankBE.new }

    context "GET to /advice" do
      let(:response) { get "/advice" }
      binding.pry
      it "returns status 200 OK" do
        expect(response.status).to eq 200
      end
    end
  end
end
