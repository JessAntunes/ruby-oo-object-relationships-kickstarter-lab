class Backer
    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        array = []
        ProjectBacker.all.select do |projects|
           if projects.backer == self
                array << projects.project
            end
        end
        array
    end

end