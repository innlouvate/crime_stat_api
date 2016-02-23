require 'data_mapper'
require 'dm-postgres-adapter'
require 'csv'
require 'dm-validations'

require_relative 'models/borough'
require_relative 'models/fy15'
require_relative 'models/fy16'

DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/crime_data_#{ENV['RACK_ENV']}")
DataMapper.finalize
