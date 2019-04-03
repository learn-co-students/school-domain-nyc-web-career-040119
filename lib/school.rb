# code here!
class School
	attr_accessor :roster, :name

	def initialize(roster)
		@roster = {}
		@name = name
	end

	def add_student(name, level)
		@roster[level] ||= []
		@roster[level] << name
	end

	def grade(level)
		@roster[level]
	end

	def sort
		@roster.each do |level, names|
			names.sort!
		end
	end

end
