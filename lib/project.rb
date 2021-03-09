class Project
    attr_accessor :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        array = []
        ProjectBacker.all.select do |projects|
            if projects.project == self
                array << projects.backer
            end
        end
        array
    end


end