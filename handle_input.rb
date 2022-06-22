require 'display_message'

module HandleInput
  def self.get_input(recursive_call)
    input = gets.chomp
    input.empty? ? recursive_call.call : input
  end

  def self.read_name
    print 'Name: '
    get_input(method(:read_name))
  end

  def self.read_age
    print 'Age: '
    age = gets.chomp.to_i
    in_array?(age, (1..1000)) ? age : read_age
  end

  def self.read_title
    print 'Title: '
    get_input(method(:read_title))
  end

  def self.read_author
    print 'Author: '
    get_input(method(:read_author))
  end

  def self.read_desired_date
    print "\nDate: "
    get_input(method(:read_desired_date))
  end

  def self.read_permission
    print 'Has parent permission? [Y/N]: '
    permission = gets.chomp
    in_array?(permission.capitalize, %w[Y N]) ? permission.capitalize : read_permission
  end

  def self.read_specialization
    print 'Specialization: '
    get_input(method(:read_specialization))
  end

  def self.in_array?(user_input, arr)
    result = arr.include?(user_input)
    DisplayMessage.invalid_input_message(user_input) unless result
    result
  end

  def self.handle_input_based_on_list(function_call, list)
    function_call.call
    input = gets.chomp
    in_array?(input.to_i, (0...list.length)) ? input.to_i : handle_input_based_on_list(function_call, list)
  end
end
