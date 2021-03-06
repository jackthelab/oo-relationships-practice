#One Dessert has one bakery but One bakery has many Desserts
#One Dessert has many ingredients and One ingredient is in many desserts
### Dessert will SSOT

class Dessert

    attr_reader :name, :bakery, :ingredients

    @@all = []

    def initialize(name, bakery, ingredients)
        @name = name
        @bakery = bakery
        @ingredients = ingredients
        @@all.push(self)
    end

    def calories
        return self.ingredients.collect { |ingredient| ingredient.calories }.reduce(:+)
    end

    def self.all
        @@all
    end

end