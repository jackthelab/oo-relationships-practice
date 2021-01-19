#one client has one trainer but one trainer has many clients (1 to 1)
#one client has many locations and one location has many clients (1 to 1)

##### REQUIRED METHODS/ATTRIBUTES #####
#assign_trainer => take trainer as arg, and assign trainer to the client (instance)

require './Trainer.rb'

class Client

    attr_reader :trainer, :name, :favorite_location, :visits
    
    @@all = []

    def initialize(name)
        @name = name
        @visits = 0

        @@all.push(self)
    end

    def assign_trainer(trainer)
        @trainer = trainer
    end

    def locations
        self.trainer.locations
    end

    def favorite_location(location)
        @favorite_location = favorite_location
    end

    def check_in
        @visits += 1
    end

    def self.all
        @@all
    end

end