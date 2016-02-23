require_relative '../data_mapper_setup.rb'
require 'sinatra'

class Fy16
  include DataMapper::Resource

  has n, :boroughs#, :required => false

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
