require 'pry'

class School
  def initialize(school)
    @school = school
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    @roster[grade] ? @roster[grade] << name : @roster[grade] = [name]
  end

  def grade(grade_num)
    self.roster[grade_num]
  end

  def sort
    @roster.each do |grade, students|
      # puts students.inspect
      # puts students.sort.inspect
      @roster[grade] = students.sort
    end
  end
end
