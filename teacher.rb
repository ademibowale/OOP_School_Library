require './person'

class Teacher < Person
  def initialize(specialization = 'Unknown')
    super(age, name, parent_permission)
    @specialization = specialization
  end

 