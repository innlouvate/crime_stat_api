require_relative '../data_mapper_setup.rb'
require 'sinatra'

class Borough
  include DataMapper::Resource

  belongs_to :fy16 #:key => true
  belongs_to :fy15 #:key => true

  property :id, Serial
  property :Borough_Name, String

end

# CSV.foreach("/Users/louisefranklin/Documents/Code/Makers/6week/db_api_crimedata/app/models/boroughs.csv") do |row|
#   Borough.create(content: row[0])
# end

# CSV.foreach('boroughs.csv', :headers => true) do |csv_obj|
#     # puts csv_obj['first'] #just to verify that parsing is working well
#     # DB[:bourgh].insert( :Borough_Name =>  cvs_obj['Borough_Name'], :Other_Notifiable => csv_obj['Other_Notifiable'] )
#     Borough.create(csv_obj)
# end
