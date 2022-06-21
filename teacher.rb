$LOAD_PATH << '.'
require 'person'

class Teacher < Person
  def initialize(age, specialization, name = 'Unknown', parent_permission: true, id: nil)
    super(age, name, parent_permission: parent_permission, id: id)
    @specialization = specialization
  end

  def can_use_services?
    true
  end

  def to_hash
    hash = {}
    hash[:class] = self.class
    hash[:age] = @age
    hash[:specialization] = @specialization
    hash[:name] = @name
    hash[:id] = @id
    hash
  end

  def self.create_from_hash(hash)
    Teacher.new(hash['age'], hash['specialization'], hash['name'], id: hash['id'])
  end
end
