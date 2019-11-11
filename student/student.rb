class Student

  def initialize(input_student_name, input_cohort)
    @student_name = input_student_name
    @cohort = input_cohort
  end

  def student_name
    return @student_name
  end

  def cohort
    return @cohort
  end

  def student_can_talk
      return "What up my homies!"
  end

  def say_favourite_lang(favourite_lang)
    return "I love #{favourite_lang}!"
  end


end
