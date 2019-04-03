require 'pry'

class School

  attr_accessor :grade
  attr_reader :roster

  def initialize(name)
    @name = name
    @grade
    @roster = {}
  end

  def add_student(name, grade)
    if roster[grade]
      roster[grade] << name
    else
      roster[grade] = []
      roster[grade] << name
    end
  end

  def grade(grade)
    roster.each do |key, value|
      if key == grade
        return value
      end
    end
  end

  def sort
    hash = {}
    roster.each do |key, value|
      hash[key] = value.sort
    end
    hash
  end
end
