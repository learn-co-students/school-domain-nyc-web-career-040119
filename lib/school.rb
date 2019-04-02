# code here!
require 'pry'
class School

  def initialize(name)
    @name = name
    @roster ={}
  end

  def roster
    @roster
  end

  def add_student(name,grade)
    @roster[grade] ||= []
    @roster[grade] << name

    #binding.pry
  end

  def grade(grade)
  @roster[grade]
  end

  def sort
    #binding.pry
    @roster.each do |grade,students|

      @roster[grade] = @roster[grade].sort
      #binding.pry

    end
  end


end
