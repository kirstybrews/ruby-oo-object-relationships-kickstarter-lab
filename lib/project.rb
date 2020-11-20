require 'pry'

class Project

    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        backers = []
        ProjectBacker.all.each do | each_project_and_backer |
            if each_project_and_backer.project == self
                backers << each_project_and_backer.backer
            end
        end
        backers
    end

end