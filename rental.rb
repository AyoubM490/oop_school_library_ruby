class Rental
  attr_accessor :date
  attr_reader :person, :book

  def initialize(person, book, date = "a date")
    @date = date

    @person = person
    person.rentals << self

    @book = book
    book.rentals << self
  end
end