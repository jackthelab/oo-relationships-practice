#Run file for Gym Project
require 'pry'
require './Trainer.rb'
require './Location.rb'
require './Client.rb'
require './TrainerLocation.rb'

jacob = Trainer.new("Jacob")
liz = Trainer.new("Liz")
amy = Trainer.new("Amy")

david = Client.new("David")
david.assign_trainer(jacob)

hannah = Client.new("Hannah")
hannah.assign_trainer(liz)

brice = Client.new("Brice")
brice.assign_trainer(jacob)

madeline = Client.new("Madeline")
madeline.assign_trainer(amy)

south_gym = Location.new("South")
east_gym = Location.new("East")
west_gym = Location.new("West")
north_gym = Location.new("North")

tl_one = TrainerLocation.new(jacob, south_gym)
tl_two = TrainerLocation.new(jacob, east_gym)
tl_three = TrainerLocation.new(jacob, west_gym)
tl_four = TrainerLocation.new(liz, east_gym)
tl_five = TrainerLocation.new(liz, south_gym)
tl_six = TrainerLocation.new(amy, west_gym)
tl_seven = TrainerLocation.new(amy, north_gym)
tl_eight = TrainerLocation.new(liz, north_gym)

#binding.pry
puts "Done."