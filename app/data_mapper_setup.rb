require 'data_mapper'
require 'dm-postgres-adapter'
require 'csv'

require_relative 'models/borough'

DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/crime_data_#{ENV['RACK_ENV']}")
DataMapper.finalize
