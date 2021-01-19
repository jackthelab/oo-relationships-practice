require './Guest.rb'
require './Listing.rb'
require '.Trip.rb'

soho_loft = Listing.new("New York, New York")
austin_eastsider = Listing.new("Austin, Texas")
ocean_side = Listing.new("Portland, Maine")

jacob = Guest.new("Jacob")
kimberly = Guest.new("Kimberly")
isaiah = Guest.new("Isaiah")
liz = Guest.new("Liz")

trip_1 = Trip.new(soho_loft, isaiah)
trip_2 = Trip.new(austin_eastsider, liz)
trip_3 = Trip.new(austin_eastsider, jacob)
trip_4 = Trip.new(ocean_side, kimberly)
trip_5 = Trip.new(ocean_side, liz)
