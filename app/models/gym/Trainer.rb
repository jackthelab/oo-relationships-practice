#one trainer has many clients but one client has one trainer (1 to many; 1 to 1)
#one trainer has many locations and one location has many trainers (many to many)
###Need SSOT for trainer-location relationship.

##### REQUIRED METHODS/ATTRIBUTES #####
#most_clients => find trainer with most clients, give that trainer a bonus
###Class method to find, instance method to give bonus

require './TrainerLocation.rb'

class Trainer

    attr_reader :name
    
    @@all = []

    def initialize(name)
        @name = name

        @@all.push(self)
    end

    def locations
        trainer_locations = TrainerLocation.all.select { |tl| tl.trainer == self }
        locations = trainer_locations.collect { |tl| tl.location }
        return locations
    end

    def clients
        return Client.all.select { |client| client.trainer == self }
    end

    def add_location(location)
        new_tl = TrainerLocation.new(self, location)
    end

    def remove_location(t_l)
        TrainerLocation.delete(t_l)
    end

    def give_bonus(amount)
        puts "#{self.name} received a bonus of $#{amount}!"
    end

    def self.all
        @@all
    end

    def self.most_clients
        busiest_trainer_clients = 0
        busiest_trainer = nil

        self.all.each do |trainer|
            if trainer.clients.count > busiest_trainer_clients
                busiest_trainer_clients = trainer.clients.count
                busiest_trainer = trainer
            end
        end
        
        busiest_trainer.give_bonus(1000)
    end

end