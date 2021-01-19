#a location has many trainers and a trainer has many locations (many to many)
#a location has many clients but a client has one location (1 to many; 1 to 1)
###Need SSOT for trainer-location relationship

##### REQUIRED METHODS/ATTRIBUTES #####
#least_clients => find location with least clients. Increase marketing spend there
###Class method to find, instance helper method to adjust marketing spend

require './TrainerLocation.rb'

class Location

    attr_reader :name
    
    @@all = []

    def initialize(name)
        @name = name

        @@all.push(self)
    end

    def trainers
        trainer_locations = TrainerLocation.all.select { |tl| tl.location == self }
        return trainer_locations.collect { |tl| tl.trainer }
    end

    def clients
        location_clients = []
        self.trainers.each do |trainer|
            location_clients.push(trainer.clients)
        end
        return location_clients.flatten
    end

    def add_spend(amount, department)
        return "Adding $#{amount} of spend to the #{department} department for the #{self.name} location."
    end

    def self.least_clients
        least_clients = self.all.first
        least_clients_volume = least_clients.clients.count

        self.all.each do |location|
            if location.clients.count < least_clients_volume
                least_clients = location
                least_clients_volume = location.clients.count
            end
        end

        least_clients

        least_clients.add_spend(1000, "Marketing")
    end

end