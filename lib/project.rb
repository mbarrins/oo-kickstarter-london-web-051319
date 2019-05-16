class Project
	attr_reader :title, :backers

	def initialize(title)
		@title = title
		@backers = []
	end

	def add_backer(backer)
		@backers << backer if not @backers.include?(backer)
		backer.backed_projects << self if not backer.backed_projects.include?(self)
	end

end