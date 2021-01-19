#driver has many rides but ride has one driver
#driver is initialized with a name argument

require './Ride.rb'

class Driver

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name

        @@all.push(self)
    end

    def rides
        #array of all rides driver has made
        ##using Ride class as SSOT here
        return Ride.all.select { |ride| ride.driver == self }
    end

    def passengers
        #array of all passengers a driver has had
        ##using Ride class as SSOT here
        all_passengers = self.rides.collect { |ride| ride.passenger }
        return all_passengers.uniq
    end

    def self.all
        @@all
    end

    def self.mileage_cap(distance)
        #uses distance argument
        #returns array of all drivers who have driven more than distance
        drivers_over = []

        Driver.all.each do |driver|
            driver_miles = 0
            driver.rides.each do |ride|
                driver_miles += ride.distance
            end
            if driver_miles > distance
                drivers_over.push("#{driver.name}: #{driver_miles}")
            end
        end

        return drivers_over

    end

end