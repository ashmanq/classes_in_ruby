require ('minitest/autorun')
require('minitest/reporters')
require_relative('../student')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new()

class TestStudent < MiniTest::Test

  def setup()
    @student = Student.new("Ashir Qureshi", "G18")
  end

  def test_student_name()
    assert_equal("Ashir Qureshi", @student.get_name())
  end

  def test_student_cohort()
    assert_equal("G18", @student.get_cohort())
  end

  def test_set_name()
    @student.set_name("Joe Bloggs")
    assert_equal("Joe Bloggs", @student.get_name())
  end

  def test_set_cohort()
    @student.set_cohort("G20")
    assert_equal("G20", @student.get_cohort())
  end

  def test_student_can_talk()
    assert_equal("I can talk!", @student.student_can_talk())
  end

  def test_set_favourite_language()
    favourite_language = @student.say_favourite_language("Ruby")
    assert_equal("I love Ruby!", favourite_language)
  end


end
