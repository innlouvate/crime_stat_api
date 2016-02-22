ENV["RACK_ENV"] ||= "development"

require 'sinatra/base'
require 'sinatra/flash'
require_relative 'data_mapper_setup'
require_relative 'models/borough'
require 'json'

class CrimeData < Sinatra::Base
  # enable :sessions
  # set :session_secret, 'super secret'
  # register Sinatra::Flash
  # use Rack::MethodOverride

  get '/' do
    'Hello CrimeData!'
  end

  # get '/:borough' do
  #   content_type :json
  #   borough = Borough.first(borough_name: params[:borough])
  #   { borough: borough }.to_json
  # end

  get '/:borough' do
    content_type :json
    borough = Borough.first(borough_name: params[:borough])
    if params[:crime] == nil
      { borough: borough }.to_json
    else
      crimes = params[:crime].split('-')
      crime_info = {}
      crimes.each do |crime|
        crime_info[crime.to_sym] = borough.send(crime)
      end
      { borough: borough.borough_name, crime_info: crime_info }.to_json
    end
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
