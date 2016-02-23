require_relative '../data_mapper_setup.rb'
require 'sinatra'

class Borough
  include DataMapper::Resource

  has 1, :fy16
  has 1, :fy15

  property :id, Serial
  property :place_name, String

end
