class Book
  attr_accessor :title, :author

  def initialize(title = 'some title', author = 'some author')
    @title = title
    @author = author
    @rentals = []
  end

  def add_rental(rental)
    @rentals.push(rental) unless @rentals.include?(rental)
    rental.book = self
end