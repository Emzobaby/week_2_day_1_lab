require('minitest/autorun')
require('minitest/rg')
require_relative('student')

class TestStudent < MiniTest::Test

def test_can_create_student
  emma_student = Student.new("Emma Smith", "G16")
end

 def test_return_student_name
   emma_student = Student.new("Emma Smith", "G16")
   assert_equal("Emma Smith", emma_student.student_name)
 end

 def test_return_cohort
   emma_student = Student.new("Emma Smith", "G16")
   assert_equal("G16", emma_student.cohort)
 end

end
