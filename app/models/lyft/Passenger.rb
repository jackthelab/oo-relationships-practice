#passenger has many rides but a ride has a passenger
#passenger initialized with name argument

require 'Ride.rb'

class Passenger

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name

        @@all.push(self)
    end

    def rides
        #array of rides self has been on
        ##Ride class acts as SSOT here
    end

    def drivers
        #array of drivers self has ridden with
        ##Ride class acts as SSOT here
    end

    def total_distance
        #sum of all distance self has travelled
        #Ride class acts as SSOT here
    end

    def self.all
        @@all
    end

    def self.premium_members
        #array of all passengers who have travelled > 100 miles with service
        ## use total_distance method here
    end
    
end