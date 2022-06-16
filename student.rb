require './person'
require './classroom'

class Student < Person
  attr_reader :classroom

  # rubocop:todo Style/OptionalBooleanParameter
  def initialize(age, classroom, name = 'Unknown', parent_permission = true)
    # rubocop:enable Style/OptionalBooleanParameter
    super(age, name, parent_permission)
    @classroom = classroom
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
