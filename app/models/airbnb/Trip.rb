#a trip has one listing but a listing has many trips
#a trip has one guest but a guest has many trips

## Acting as SSOT for Listing and Guest?

##### NECESSARY METHODS/ATTRIBUTES #####
#.listing => listing object for the trip (instance)
#.guest => guest object for the trip (instance)
#.all => array of all trips (class)

class Trip

    attr_reader :listing, :guest

    @@all = []

    def initialize(listing, guest)
        @listing = listing
        @guest = guest

        @@all.push(self)
    end

    def self.all
        @@all
    end

end
