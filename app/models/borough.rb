require_relative '../data_mapper_setup.rb'
# require 'boroughs.csv'
require 'csv'
require 'sinatra'

class Borough
  include DataMapper::Resource

  property :id, Serial
  property :Borough_Name, String
  property :Murder, Integer
  property :Wounding_GBH, Integer
  property :Assault_With_Injury, Integer
  property :Common_Assault, Integer
  property :Offensive_Weapon, Integer
  property :Harassment, Integer
  property :Other_Violence, Integer
  property :Rape, Integer
  property :Other_Sexual, Integer
  property :Personal_Property, Integer
  property :Business_Property, Integer
  property :Burglary_in_A_Dwelling, Integer
  property :Burglary_in_Other_Buildings, Integer
  property :Theft_Taking_Of_Motor_Vehicle, Integer
  property :Theft_From_Motor_Vehicle, Integer
  property :Motor_Vehicle_Interference_Tampering, Integer
  property :Theft_From_Shops, Integer
  property :Theft_Person, Integer
  property :Theft_Taking_Of_Pedal_Cycles, Integer
  property :Other_Theft, Integer
  property :Handling_Stolen_Goods, Integer
  property :Other_Fraud_Forgery, Integer
  property :Criminal_Damage_to_a_Dwelling, Integer
  property :Criminal_Damage_To_Other_Buildings, Integer
  property :Criminal_Damage_To_Motor_Vehicle, Integer
  property :Other_Criminal_Damage, Integer
  property :Drug_Trafficking, Integer
  property :Possession_Of_Drugs, Integer
  property :Other_Drugs, Integer
  property :Going_Equipped, Integer
  property :Other_Notifiable, Integer

end

# CSV.foreach("/Users/louisefranklin/Documents/Code/Makers/6week/db_api_crimedata/app/models/boroughs.csv") do |row|
#   Borough.create(content: row[0])
# end

# CSV.foreach('boroughs.csv', :headers => true) do |csv_obj|
#     # puts csv_obj['first'] #just to verify that parsing is working well
#     # DB[:bourgh].insert( :Borough_Name =>  cvs_obj['Borough_Name'], :Other_Notifiable => csv_obj['Other_Notifiable'] )
#     Borough.create(csv_obj)
# end
