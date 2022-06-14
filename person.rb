class Person
  def initialize(name = 'Unknown', age, parent_permission = true)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  attr_accessor :name, :age

  def can_use_services?
    if of_age? || @parent_permission
      true
    else
      false
    end
  end

  private

  def of_age?
    @age >= 18
  end
end