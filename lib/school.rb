require "pry"
class School
  attr_accessor :name, :roster
  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if roster.keys.include?(grade)
      roster[grade] << name
    else
      roster[grade] = []
      roster[grade] << name
    end
  end

  def grade(num)
    roster[num]
  end

  def sort
    roster.each do |grade, student_array|
      student_array.sort!
    end
  end

end
