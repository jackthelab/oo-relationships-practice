#passenger has many rides but a ride has a passenger
#passenger initialized with name argument

require './Ride.rb'

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
        return Ride.all.select { |ride| ride.passenger == self }
    end

    def drivers
        #array of drivers self has ridden with
        ##Ride class acts as SSOT here
        drivers = self.rides.collect { |ride| ride.driver }
        return drivers.uniq
    end

    def total_distance
        #sum of all distance self has travelled
        #Ride class acts as SSOT here
        sum_distance = 0
        self.rides.each { |ride| sum_distance += ride.distance }

        return sum_distance
    end

    def self.all
        @@all
    end

    def self.premium_members
        #array of all passengers who have travelled > 100 miles with service
        ## use total_distance method here
        return self.all.select { |passenger| passenger.total_distance > 100 }
    end

end