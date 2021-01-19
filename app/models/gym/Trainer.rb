#one trainer has many clients but one client has one trainer (1 to many; 1 to 1)
#one trainer has many locations and one location has many trainers (many to many)
###Need SSOT for trainer-location relationship.

##### REQUIRED METHODS/ATTRIBUTES #####
#most_clients => find trainer with most clients, give that trainer a bonus
###Class method to find, instance method to give bonus

require './TrainerLocations.rb'

class Trainer

    attr_reader :name
    
    @@all = []

    def initialize(name)
        @name = name

        @@all.push(self)
    end

    def locations
        #array of all locations
        ##will be locations where clients can go
    end

    def clients
        #array of all clients
    end

    def add_location(location)
        #where am I sending this...?
    end

    def give_bonus(amount)
        puts "#{self.name} received a bonus of $#{amount}!"
    end

    def self.most_clients
        #find trainer with most clients, keep as variable busiest_trainer
        
        busiest_trainer.give_bonus(1000)
    end

end