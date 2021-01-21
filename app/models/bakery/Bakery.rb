#One Bakery has many desserts but One Dessert has one bakery
### Dessert can interact with ingredients so don't need to go directly through Bakery
### Dessert looks like SSOT

require './Dessert.rb'

class Bakery

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all.push(self)
    end

    def desserts
        #array of all desserts the bakery makes
    end

    def ingredients
        #array of all ingredients used in all desserts
    end

    def average_calories
        #float for the average number of calories in every dessert
    end

    def shopping_list
        #string of names of ingredients for the bakery
        ##self.ingredients.join(", ")
    end

    def self.all
        @@all
    end

end