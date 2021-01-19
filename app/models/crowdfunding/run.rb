#run file for crowdfunding

require 'pry'
require './User.rb'
require './Project.rb'
require './Pledge.rb'

jacob = User.new("Jacob")
david = User.new("David")
jade = User.new("Jade")
kimberly = User.new("Kimberly")

skateboards = Project.new("Skateboards", 10000, david)
whiteboards = Project.new("Whiteboards", 25000, jacob)
photo_boards = Project.new("Photo Boards", 50000, jade)
electric_bike = Project.new("Electrice Bikes", 1000000, jacob)


pledge_one = Pledge.new(photo_boards, 1000, kimberly)
pledge_two = Pledge.new(photo_boards, 5000, jacob)
pledge_three = Pledge.new(electric_bike, 250000, david)
pledge_four = Pledge.new(photo_boards, 40000, kimberly)
pledge_five = Pledge.new(skateboards, 25000, jade)
pledge_six = Pledge.new(photo_boards, 3000, jade)
pledge_seven = Pledge.new(photo_boards, 4000, david)
pledge_eight = Pledge.new(electric_bike, 50000, kimberly)



#binding.pry
puts "Done."