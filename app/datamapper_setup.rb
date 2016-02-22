require 'data_mapper'
require 'dm-postgres-adapter'

require_relative 'models/bourgh'

DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/bookmark_manager_#{ENV['RACK_ENV']}")
DataMapper.finalize
