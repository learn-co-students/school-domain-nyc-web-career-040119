class School
  attr_accessor :model, :roster, :add_student, :grade

  def initialize(model)
    @model = model
    @roster = {}
  end

  def add_student(name, grade)
    if !@roster[grade]
      @roster[grade] = []
    end
    if !@roster[grade].include?(name)
      @roster[grade] << name
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    #@roster.sort.to_h
    @roster.each do |grade, names|
      @roster[grade] = @roster[grade].sort
    end
  end

end
