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

# {9 => ["Homer Simpson","Bart Simpson"], 10 => ["Jeff Baird", "Avi Flombaum"], 7 => ["Jack Bauer","Blake Johnson"]}
# {7 => ["Blake Johnson", "Jack Bauer"], 9 => ["Bart Simpson", "Homer Simpson"], 10 => ["Avi Flombaum", "Jeff Baird"]}

  def sort
    @roster.each do |grade, names|
      @roster[grade] = @roster[grade].sort
    end.sort.to_h
  end

end
