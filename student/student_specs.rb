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

 def test_student_can_talk
   emma_student = Student.new("Emma Smith", "G16")
   assert_equal("What up my homies!", emma_student.student_can_talk)
 end

 def test_say_favourite_lang
   emma_student = Student.new("Emma Smith", "G16")
   assert_equal("I love Ruby!", emma_student.say_favourite_lang("Ruby"))
 end

end
