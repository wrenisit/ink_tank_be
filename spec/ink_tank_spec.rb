ENV['APP_ENV'] = 'test'

require '././ink_tank_be'
require 'rspec'
require 'rack/test'
require 'pry'

RSpec.describe 'The Ink Tank' do
  describe InkTankBE do
  include Rack::Test::Methods
    let(:ink_tank_be) { InkTankBE.new }

    context "POST to /payments" do
      let(:response) { post "/payments" }

      it "returns status 200 OK" do
        expect(response.status).to eq 200
      end
    end
  end
  def app
    Sinatra::Application
  end

  it "gets stripe" do
    data = {
      'name' => "Mallory Archer",
      'amount' => "20000",
      'source' => "tok_mastercard"
    }
    post '/payments', data.to_json
    expect(last_response).to be_ok
  end
end
