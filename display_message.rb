module DisplayMessage
  def self.main_message
    puts '
          Please choose an option by entering a number:
          1 | List all books
          2 | List all people
          3 | Create a person
          4 | Create a book
          5 | Create a rental
          6 | List all rentals for a given person id
          7 | Exit'
    puts ''
    puts 'Select an option: '
  end

  def self.welcome_message
    puts 'Welcome to School Library App!'
  end

  def self.invalid_input_message(user_input)
    puts "\nInvalid input \"#{user_input}\"!, Try again!"
  end

  def self.success_message(object)
    puts "#{object.class} created successfully"
  end
end
