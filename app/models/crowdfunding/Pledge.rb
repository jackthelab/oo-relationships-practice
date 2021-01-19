#a pledge can have one user but a user can have many pledges
#a plege can have one project but a project can have many pledges
#Think this acts as SSOT

require './Project.rb'
require './User.rb'

class Pledge

    attr_reader :project, :amount, :user

    @@all = []

    def initialize(project, amount, user)
        @project = project
        @amount = amount
        @user = user

        @@all.push(self)
    end

    def self.all
        @@all
    end
    
end