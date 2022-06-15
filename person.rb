$LOAD_PATH << '.'
require_relative("nameable.rb")

class Person < Nameable
  attr_accessor :name, :age
  attr_reader :id

  def initialize(id: nil, name = "Unknown", age, parent_permission = true)
    super()
    @id = id || Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def can_use_services?
    if of_age? || @parent_permission
      true
    else
      false
    end
  end

  def get_id
    @id
  end

  def correct_name
    @name
  end

  def of_age?
    @age >= 18
  end
end