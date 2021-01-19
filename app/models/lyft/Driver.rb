#driver has many rides but ride has one driver
#driver is initialized with a name argument

require './Ride.rb'

class Driver

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name

        @@all.push(name)
    end

    def rides
        #array of all rides driver has made
        ##using Ride class as SSOT here
    end

    def passengers
        #array of all passengers a driver has had
        ##using Ride class as SSOT here
    end

    def self.all
        @@all
    end

    def self.mileage_cap(distance)
        #uses distance argument
        #returns array of all drivers who have driven more than distance
    end

end