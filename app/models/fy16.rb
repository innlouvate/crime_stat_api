require_relative '../data_mapper_setup.rb'
require 'sinatra'

class Fy16
  include DataMapper::Resource

  has n, :boroughs#, :required => false

  property :id, Serial
  property :borough_name, String
  property :murder, Integer
  property :wounding_gbh, Integer
  property :assault_with_injury, Integer
  property :common_assault, Integer
  property :offensive_weapon, Integer
  property :harassment, Integer
  property :other_violence, Integer
  property :rape, Integer
  property :other_sexual, Integer
  property :personal_property, Integer
  property :business_property, Integer
  property :burglary_in_a_dwelling, Integer
  property :burglary_in_other_buildings, Integer
  property :theft_taking_of_motor_vehicle, Integer
  property :theft_from_motor_vehicle, Integer
  property :motor_vehicle_interference_tampering, Integer
  property :theft_from_shops, Integer
  property :theft_person, Integer
  property :theft_taking_of_pedal_cycles, Integer
  property :other_theft, Integer
  property :handling_stolen_goods, Integer
  property :other_fraud_forgery, Integer
  property :criminal_damage_to_a_dwelling, Integer
  property :criminal_damage_to_other_buildings, Integer
  property :criminal_damage_to_motor_vehicle, Integer
  property :other_criminal_damage, Integer
  property :drug_trafficking, Integer
  property :possession_of_drugs, Integer
  property :other_drugs, Integer
  property :going_equipped, Integer
  property :other_notifiable, Integer

end
