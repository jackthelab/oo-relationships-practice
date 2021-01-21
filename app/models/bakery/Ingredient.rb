#One Ingredient can have many desserts and One Dessert has many ingredients
### EVERY dessert has a calorie count (initialize with it)
## any interaction with Bakery though can go through Dessert so...
## Dessert = SSOT

require './Dessert.rb'

class Ingredient

    attr_reader :name, :calorie_count

    @@all = []

    def initialize(name, calorie_count)
        @name = name
        @calorie = calorie_count
        @@all.push(self)
    end

    def dessert
        #array of all desserts using ingredient
        return Dessert.all.select { |dessert| dessert.ingredients.include?(self) }
    end

    def bakeries
        #array of all bakeries using ingredient
        return self.dessert.collect { |dessert| dessert.bakery }
    end

    def self.all
        return @@all
    end

    def self.find_all_by_name(ingredient)
        #array of all ingredients with the ingredient string in name
        ## ingredient = chocolate needs to return [chocolate sprinkles, chocolate, etc.]
        return self.all.select { |item| item.name.split(' ').include(ingredient) }
    end

end