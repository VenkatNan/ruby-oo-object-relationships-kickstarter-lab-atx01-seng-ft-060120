class Project
    attr_reader :title

    def initialize (title)
        @title=title
    end

    def add_backer (backer)
        ProjectBacker.new(self,backer)

    end
    def backers
        proj = ProjectBacker.all.select do |bankers|
            bankers.project == self
        end
        proj.map do |cap|
            cap.backer
        end
        
    end

end