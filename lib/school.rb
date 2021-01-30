class School
    attr_accessor :name, :roster, :student
  
    def initialize(name)
      @name = name
      @roster = {}
    end
  
    def add_student(name, student_grade)
      roster[student_grade] ||= []
      roster[student_grade] << name
    end
  
    def grade(student_grade)
      roster[student_grade]
    end
  
    def sort
      sorted_roster = {}
      roster.each do |grade, students|
        sorted_roster[grade] = students.sort
      end
      sorted_roster
    end
  
  end