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


end
