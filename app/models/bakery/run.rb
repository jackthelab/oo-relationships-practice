#run file for Bakery

require 'pry'
require './Bakery.rb'
require './Dessert.rb'
require './Ingredient.rb'

bistro_shop = Bakery.new("Bistro Shop")
donut_hole = Bakery.new("Donut Hole")
steve_snacks = Bakery.new("Steve's Snacks")

sugar = Ingredient.new("sugar", 100)
icing = Ingredient.new("icing", 150)
ice_cream = Ingredient.new("ice cream", 300)
milk = Ingredient.new("milk", 200)
flour = Ingredient.new("flour", 75)
egg = Ingredient.new("egg", 60)

dessert_one = Dessert.new("donut", donut_hole, [sugar, icing, milk, flour, egg])
dessert_two = Dessert.new("cake", steve_snacks, [flour, icing, milk, egg])
dessert_three = Dessert.new("crepe", bistro_shop, [egg, flour, milk])
dessert_four = Dessert.new("cookie", steve_snacks, [icing, flour])
dessert_five = Dessert.new("milkshake", bistro_shop, [milk, ice_cream])


binding.pry
puts "Delicious."