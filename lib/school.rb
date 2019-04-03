require 'pry'
class School
    attr_accessor :roster
    def initialize(school)
        @school = school
        @roster = {}
    end

    def add_student(student,grade)
        if @roster.has_key?(grade) 
            @roster[grade] << student  
        elsif       
            @roster[grade] = []
            @roster[grade] << student
        end 
    end 

    def grade(grade) 
        @roster[grade]
    end 

    def sort
        @roster.values.collect do |names|
        names.sort!
    end
        @roster
    end 
end