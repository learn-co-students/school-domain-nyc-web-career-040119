require 'pry'
class School
  attr_accessor :roster, :student, :school
  def initialize(school)
    @school = school
    @roster = Hash.new{ |key, value| key[value] = [] }
  end

  def add_student(student, grade)
    @roster[grade] << student
  end

  def grade(grade_var)
    @roster[grade_var]
  end

  def sort
    @roster.each { |key, value| @roster[key] = value.sort }
  end

end
