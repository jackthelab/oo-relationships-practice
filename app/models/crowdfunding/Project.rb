#Project can have one creator but a creator can have many projects
#Project can have many backers and a backer can have many projects
#Project can have many pledges but a Pledge can only have one project

require './Pledge.rb'
require './User.rb'

class Project

    attr_reader :name, :pledge_goal, :creator
    
    @@all = []

    def initialize(name, pledge_goal, creator)
        @name = name
        @pledge_goal = pledge_goal
        @creator = creator

        @@all.push(self)
    end

    ##instance methods##
    def backers
        #
    end

    def pledges
        #
    end

    def self.all
        @@all
    end

    def self.no_pledges
        #all projects with no pledges yet
    end

    def self.above_goal
        #all projects which have met or exceeded their pledge goal
    end

    def self.most_backers
        #project with the highest number of backers
    end

end