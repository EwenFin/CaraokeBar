class Student
  attr_accessor :name, :cohort, :favourite_language
  def initialize (name, cohort, favourite_language)
    @name = name
    @cohort = cohort
    @favourite_language = favourite_language
  end
end 

def student_can_talk(student)
  return "I can talk"
end

def say_favourite_language(student)
  return "I love " + student.favourite_language.to_s
end