class Backer
    attr_reader :name

    def initialize (name)
        @name = name
    end

    def back_project (project)
        ProjectBacker.new(project,self)
    end

    def backed_projects
        bake = ProjectBacker.all.select do |backed|
         backed.backer == self
        end
        bake.map do |miniBake|
            miniBake.project
        end
    end
end