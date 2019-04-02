require 'pry'

class School

  attr_reader :roster, :name

  def initialize(name)
    @name = name
    @roster = {}
  end

  # def name=(name)
  #   @name = name
  # end

  # def name
  #   @name
  # end
  #
  #
  #
  # def roster
  #   @roster
  # end


  def add_student(students,grade)
    if !@roster[grade]
      @roster[grade] = [students]
    else
      @roster[grade] << students
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort

    @roster.sort_by do |grade,students|
      students.sort!
      grade
    end.to_h
  end




end

