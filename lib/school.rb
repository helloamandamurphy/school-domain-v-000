require 'pry'
class School
  attr_accessor :student_name, :grade
  attr_reader :school_name, :roster
  
  def initialize(school_name)
    school_name= (school_name)
    @school_name = school_name
    
    roster = {}
    @roster = roster
  end
  
  def add_student(student_name, grade)
    @roster[grade] ||= []
    @roster[grade] << student_name
  end
  
  def grade(grade)
    roster[grade]
  end
  
  def sort 
    #binding.pry
    test_hash = {}
    roster.each do |grade, students|
      test_hash[grade] = students.sort
    end
    test_hash
  end
    
end