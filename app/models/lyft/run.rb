#run file for Lyft
require 'pry'
require './Driver.rb'
require './Passenger.rb'
require './Ride.rb'

jacob = Passenger.new("Jacob")
isaiah = Passenger.new("Isaiah")
kimberly = Passenger.new("Kimberly")

derek = Driver.new("Derek")
liz = Driver.new("Liz")
yvonne = Driver.new("Yvonne")

ride_one = Ride.new(jacob, liz, 13.2)
ride_two = Ride.new(isaiah, liz, 10.3)
ride_three = Ride.new(kimberly, derek, 7.5)
ride_four = Ride.new(jacob, yvonne, 8)
ride_five = Ride.new(kimberly, yvonne, 21.3)
ride_six = Ride.new(isaiah, derek, 4.78)

binding.pry

puts "Done."