#a location has many trainers and a trainer has many locations (many to many)
#a location has many clients but a client has one location (1 to many; 1 to 1)
###Need SSOT for trainer-location relationship

##### REQUIRED METHODS/ATTRIBUTES #####
#least_clients => find location with least clients. Increase marketing spend there
###Class method to find, instance helper method to adjust marketing spend

require './TrainerLocations.rb'

class Location

    attr_reader :name
    
    @@all = []

    def initialize(name)
        @name = name

        @@all.push(self)
    end

    def trainers
        #
    end

    def clients
        location_clients = []
        self.trainers.each do |trainer|
            location_clients.push(trainer.clients)
        end
        location_clients.flatten
    end

    def self.least_clients
        #
    end

end