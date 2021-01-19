#listing has many trips and has many guests
#trip only has one listing and one guest though... Trip to act as SSOT
#a guest has many trips... and listings?

###### NECESSARY LISTING METHODS/ATTRIBUTES ######
#.city => string of city name (in initialize method)
#.guests => array of all guests who have stayed at a listing (instance, from SSOT?)
#.trips => array of all trips at a listing (instance, from Trip.all?)
##.trip_count => number of trips that have been taken to that listing (instance, use .trips?)
#.all => array of all listings (class)
#.find_all_by_city(city) => arg of city name, returns all listings for that city (class)
#.most_popular => find listing with most trips (class -- call .trip_count possibly?)

require './Trip.rb'

class Listing

    attr_reader :city

    @@all = []

    def initialize(city)
        @city = city

        @@all.push(self)
    end

    def guests
        guests_list = self.trips.collect { |trip| trip.guest }
        return guests_list.uniq!
    end

    def trips
        return Trip.all.select { |trip| trip.listing == self }
    end

    def trips_count
        return self.trips.count
    end

    def self.all
        return @@all
    end

    def self.find_all_by_city(city)
        return self.all.select { |listing| listing.city == city }
    end

    def self.most_popular
        highest_count = 0
        most_pop = nil

        self.all.each do |listing|
            if listing.trips_count > highest_count
                highest_count = listing.trips_count
                most_pop = listing
            end
        end

        return most_pop
    end

end