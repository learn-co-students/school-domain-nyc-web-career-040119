require 'pry'

class School

  def initialize(name)
    @name = name
  end

  # def name=(name)
  #   @name = name
  # end

  def name
    @name
  end

  ROSTER = {}

  def roster
    ROSTER
  end

  def add_student(student_name,grade)
    student = {grade => [student_name]}
    #binding.pry
    if ROSTER.empty?
      ROSTER.merge!(student)
      
    #end
    #binding.pry
    elsif ROSTER[grade]
        ROSTER.each do |grade,students|
          if grade == grade
            students << student_name
          end
        end
      end
      #ROSTER.merge

  end

end