#user can create many projects but a project can only have one creator
#user can back many projects and projects can have many backers (SSOT needed)
### Backing should be done through a pledge?
##### A pledge can have one user and one project (SSOT = A Pledge?)

require './Pledge.rb'
require './Project.rb'

class User
    
    @@all = []

    def initialize(name)
        @name = name

        @@all.push(self)
    end

    ## instance methods ##

    def back_project(project, pledge_amount)
        #
    end

    def create_project(name, pledge_goal)
        #
    end

    def backed_projects
        #
    end

    def created_projects
        #
    end

    def self.all
        @@all
    end

    def self.highest_pledge
        #user has made the highest pledge
    end

    def self.multi_pledger
        #all users who have pledged to multiple projects
    end

    def self.project_creator
        #all users who have created a project
    end

end