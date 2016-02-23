require_relative '../data_mapper_setup.rb'
require 'sinatra'
require 'csv'
require 'data_mapper'

CSV.foreach("/Users/louisefranklin/Documents/Code/Makers/6week/db_api_crimedata/app/models/FY15.csv") do |row|
  Fy15.create(content: row[0])
end

CSV.foreach("/Users/louisefranklin/Documents/Code/Makers/6week/db_api_crimedata/app/models/FY16.csv") do |row|
  Fy16.create(content: row[0])
end

CSV.foreach("/Users/louisefranklin/Documents/Code/Makers/6week/db_api_crimedata/app/models/boroughs.csv") do |row|
  Borough.create(content: row[0])
end
