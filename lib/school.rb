# code here!
require 'pry'

class School
  attr_accessor :name

  def initialize (name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student (student, grade)
    @student = student
    @grade = grade

    if roster[grade]
      roster[@grade] << student
    else
      roster[@grade] = []
      roster[@grade] << @student
    end
  end

  def grade (grade)
    roster[grade]
  end

  def sort
    sorted = {}
    roster.each do |grade, name|
      sorted[grade] = name.sort
    end
    sorted
  end
end

# binding.pry
