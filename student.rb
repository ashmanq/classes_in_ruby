
class Student
  def initialize(name, cohort)
    @name = name
    @cohort = cohort
    @talk = "I can talk!"
  end

# Getters
  def get_name()
    return @name
  end

  def get_cohort()
    return @cohort
  end

#Setters
  def set_name(name)
    @name = name
  end

  def set_cohort(cohort)
    @cohort = cohort
  end

#Other Methods
  def student_can_talk()
    return @talk
  end

  def say_favourite_language(language)
    return "I love #{language}!"
  end

end
