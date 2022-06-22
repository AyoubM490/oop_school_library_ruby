class Book
  attr_accessor :title, :author
  attr_reader :rentals, :id

  def initialize(title, author, id: nil)
    @id = id || Random.rand(1..1000)
    @title = title
    @author = author
    @rentals = []
  end

  def add_rental(rental)
    @rentals.push(rental) unless @rentals.include?(rental)
    rental.book = self
  end

  def to_hash
    hash = {}
    hash[:class] = self.class
    hash[:title] = @title
    hash[:author] = @author
    hash[:id] = @id
    hash
  end

  def self.create_from_hash(hash)
    Book.new(hash['title'], hash['author'], id: hash['id'])
  end
end
