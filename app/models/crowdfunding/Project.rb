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
        backers = self.pledges.collect { |pledge| pledge.user }
        return backers.uniq
    end

    def pledges
        return Pledge.all.select { |pledge| pledge.project == self }
    end

    def total_pledged
        pledged_amount = 0
        self.pledges.each { |pledge| pledged_amount += pledge.amount }
        return pledged_amount
    end

    ##class methods##
    def self.all
        @@all
    end

    def self.no_pledges
        #all projects with no pledges yet
        self.all.select { |project| project.pledges.count == 0 }
    end

    def self.above_goal
        #all projects which have met or exceeded their pledge goal
        self.all.select { |project| project.total_pledged >= pledge_goal }
    end

    def self.most_backers
        #project with the highest number of backers
        #could do class method to find number of backers for all projects
        #then most backers just has to find max?
        most_backers = nil
        most_backers_volume = 0

        self.all.each do |project|
            if project.backers.count > most_backers_volume
                most_backers_volume = project.backers.count
                most_backers = project
            end
        end

        most_backers
    end

end