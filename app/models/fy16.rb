require_relative '../data_mapper_setup.rb'
require 'sinatra'

class FY16
  include DataMapper::Resource

  belongs_to :place

  property :id, Serial
  property :crime1, Integer
  property :crime2, Integer
  property :crime3, Integer

end
