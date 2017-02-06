require ('minitest/autorun')
require ('./student')

class TestStudent < MiniTest::Test
  def test_student_name
    student = Student.new("Ewen", 10, "Ruby")
    assert_equal("Ewen", student.name)
  end

  def test_student_cohort
    student = Student.new("Ewen", 10, "Ruby")
    assert_equal(10, student.cohort)
  end

  def test_update_details
    student1 = Student.new("Ewen", 10, "Ruby")
    student1.name = "Ross"
    student1.cohort = 9
    assert_equal("Ross", student1.name)
    assert_equal(9, student1.cohort)
  end

  def test_student_can_talk
    student1 = Student.new("Ewen", 10, "Ruby")
    words = student_can_talk(student1)
    assert_equal("I can talk", words)
  end

  def test_say_favourite_language
    student1 = Student.new("Ewen", 10, "Ruby")
    words = say_favourite_language(student1)
    assert_equal("I love Ruby", words)
  end

end