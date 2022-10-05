require 'json'

class CreateBook
  def initialize(book)
    @books = book
  end

  def create_book
    title, author = collect_book
    new_book = Book.new(title, author)
    add_to_collection(new_book)
  end
end
