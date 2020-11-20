class Backer

    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        projects = []
        ProjectBacker.all.each do | each_project_and_backer |
            if each_project_and_backer.backer == self
                projects << each_project_and_backer.project
            end
        end
        projects
    end

end