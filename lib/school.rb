require 'pry'

class School
  attr_reader :roster, :school

  def initialize(school)
    @school = school
    @roster = Hash.new
  end

  def add_student(students, grade)
    if !@roster[grade]
      @roster[grade] = [students]
    else
      @roster[grade] << students
    end
  end #add_student

  def grade(student_grade)
    @roster[student_grade]
  end

  def sort
    @roster.sort_by do |grade, name|
      name.sort!
      grade
    end.to_h
  end

end
