class Person
  attr_accessor :name, :age
  attr_reader :id

  def initialize(age, name = 'Unkonwn', parent_permission: true)
    
    @parent_permission = parent_permission
  end

  def can_use_service
    @parent_permission || @age >= 18
  end

  private

  def of_age
    @age >= 18
  end
end
