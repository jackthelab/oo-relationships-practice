#user can create many projects but a project can only have one creator
#user can back many projects and projects can have many backers (SSOT needed)
### Backing should be done through a pledge?
##### A pledge can have one user and one project (SSOT = A Pledge?)

require './Pledge.rb'
require './Project.rb'

class User

    attr_reader :name
    
    @@all = []

    def initialize(name)
        @name = name

        @@all.push(self)
    end

    ## instance methods ##

    def back_project(project, pledge_amount)
        new_pledge = Pledge.new(project, pledge_amount, self)
    end

    def creates_project(name, pledge_goal)
        new_project = Project.new(name, pledge_goal, self)
    end

    def backed_projects
        projects_with_pledge = Pledge.all.select { |pledge| pledge.user == self }
        return projects_with_pledge.uniq.collect { |pledge| pledge.project }
    end

    def created_projects
        return Project.all.select { |project| project.creator == self }
    end

    def self.all
        return @@all
    end

    def self.highest_pledge
        #user has made the highest pledge
        highest_pledge = 0
        highest_pledger = nil

        Pledge.all.each do |pledge|
            if pledge.amount > highest_pledge
                highest_pledge = pledge.amount
                highest_pledger = pledge.user
            end
        end

        highest_pledger
    end

    def self.multi_pledger
        #all users who have pledged to multiple projects
        self.all.select { |user| user.backed_projects.count > 1 }
    end

    def self.project_creator
        #all users who have created a project
        self.all.select { |user| user.created_projects.count > 0 }
    end

end