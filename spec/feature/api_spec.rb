ENV['RACK_ENV'] = 'test'
require 'minitest/autorun'
require 'rack/test'
require './app/models/borough.rb'
require './app/models/fy15.rb'
require './app/models/fy16.rb'
require './app/app.rb'

include Rack::Test::Methods

def app
  Sinatra::Application
end

describe "Crime_data" do

  it "should return json" do
    get '/Brent?years=fy16'
    last_response.headers['Content-Type'].must_equal 'application/json'
  end

  it "should return the correct info as json" do
    get '/Brent?years=fy16&crimes=murder'
    brent_info = { borough: 'Brent', year_info: {fy15: {crime_info: {murder: 3}}}}
    brent_info.to_json.must_equal last_response.body
  end

end
