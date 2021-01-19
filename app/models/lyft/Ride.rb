#a ride has one passenger but a passenger has many rides
#a ride has one driver but a driver has many rides
#Ride class acts as SSOT for driver-passenger relationship
#initialized with passenger, driver, distance (float)

class Ride

    attr_reader :passenger, :driver, :distance

    @@all = []

    def initialize(passenger, driver, distance)
        @passenger = passenger
        @driver = driver
        @distance = distance

        @@all.push(self)
    end

    def self.all
        @@all
    end

    def self.average_distance
        #find average distance of all rides
    
        total_distance = 0
        self.all.each { |trip| total_distance += trip.distance }

        return total_distance / self.all.count
    end
end