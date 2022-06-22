require 'book'
require 'student'
require 'teacher'
require 'display_message'
require 'handle_input'

module HandleCreate
  @default_classroom = Classroom.new('default-classroom')
  def self.create_book(books)
    title = HandleInput.read_title
    author = HandleInput.read_author
    book = Book.new(title, author)
    books << book
    DisplayMessage.success_message(book)
    books
  end

  def self.create_person(people)
    print "\nDo you want to create a student (1) or a teacher (2)? [Input the number]: "
    user_input = gets.chomp
    create_person unless HandleInput.in_array?(user_input, %w[1 2])

    if user_input == '1'
      age, name, has_parent_permission = student_info
      person = Student.new(age, name, @default_classroom, parent_permission: has_parent_permission)
    else
      age, name, specialization = teacher_info
      person = Teacher.new(age, specialization, name)
    end

    people << person
    DisplayMessage.success_message(person)
    people
  end

  def self.student_info
    age = HandleInput.read_age
    name = HandleInput.read_name
    has_parent_permission = HandleInput.read_permission == 'Y'
    [age, name, has_parent_permission]
  end

  def self.teacher_info
    age = HandleInput.read_age
    name = HandleInput.read_name
    specialization = HandleInput.read_specialization
    [age, name, specialization]
  end
end
