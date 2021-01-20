#guest has many trips but a trip only has one guest
#guest has many listings and listing has many guests
##single-source of truth? Trip to act as SSOT

##### NECESSARY METHODS/ATTRIBUTES #####
#.listings => array of all listings a guest has stayed at (instance, SSOT)
#.trips => array of all trips a guest has made (instance, use Trip class to find?)
#.trip_count => number of trips by guest (instance, use Trip class to find?)
#.all => array of all guests (class)
#.pro_traveller => array of all guest who have made over 1 trip (class, use .trip_count)
#.find_all_by_name => take name argument, return all guests with that name

require './Trip.rb'

class Guest

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name

        @@all.push(self)
    end

    def listings
        stays = Trip.all.select { |trip| trip.guest == self }
        listings = stays.collect { |trip| trip.listing }.uniq
        return listings
    end

    def trips
        return Trip.all.select { |trip| trip.guest == self }
    end

    def trip_count
        self.trips.count
    end

    def self.all
        @@all
    end

    def self.pro_traveller
        self.all.select { |traveller| traveller.trip_count > 1 }
    end

    def self.find_all_by_name(name)
        self.all.select { |guest| guest.name == name }
    end

end