class School

attr_reader :roster, :school

  def initialize(school)
    @school = school
    @roster = {}
  end

  def add_student(name, grade)
    @roster[grade] ? @roster[grade] << name : @roster[grade] = [name]
  end

  def grade(grade_num)
    self.roster[grade_num]
  end

  def sort
    @roster.each do |grade, students|
      @roster[grade] = students.sort
    end
  end

end
