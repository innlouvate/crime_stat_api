ENV["RACK_ENV"] ||= "development"

require 'sinatra/base'
require 'sinatra/flash'
require_relative 'data_mapper_setup'

require 'json'

class CrimeData < Sinatra::Base

  get '/:borough' do
    content_type :json
    borough = Borough.first(Borough_Name: params[:borough])
    # years = params[:years].split('-')
    year_info = {}

    params[:years].split('-').each do |year|
      if params[:crimes].nil?
        year_info[year.to_sym] = { crime_info: borough.send(year) }
      else
        crimes = params[:crimes].split('-')
        crime_info = {}
        crimes.each do |crime|
          crime_info[crime.to_sym] = borough.send(year).send(crime)
        end
        year_info[year.to_sym] = { crime_info: crime_info }
      end

    end
    { borough: borough.Borough_Name, year_info: year_info }.to_json
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
