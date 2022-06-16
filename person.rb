$LOAD_PATH << '.'
require 'nameable'
require 'trimmer_decorator'
require 'rental'

class Person < Nameable
  attr_accessor :name, :age, :id
  attr_reader :rentals

  def initialize(age, name = 'Unknown', parent_permission = true)
    super()
    @id = id || Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  def can_use_services?
    if of_age? || @parent_permission
      true
    else
      false
    end
  end

  def person_id
    @id
  end

  def correct_name
    @name
  end

  def of_age?
    @age >= 18
  end

  def add_rental(rental)
    rentals.push(rental) unless rentals.include?(rental)
    rental.person = self
  end
end
