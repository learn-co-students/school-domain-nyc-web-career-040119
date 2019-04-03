require 'pry'

class School

  attr_accessor :roster, :student_name, :school

  def initialize(school)
    @school = school
    @roster = {}
  end

  def add_student(student_name, grade)
    if @roster[grade]
      @roster[grade] << student_name
    else
      @roster[grade] = []
      @roster[grade] << student_name
    end
  end

  def grade(students_grade)
    roster[students_grade]
  end
  
  def sort
      sorted = {}
      roster.each do |grade, students|
        sorted[grade] = students.sort
      end
      sorted
    end
end
