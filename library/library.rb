class Library

  attr_accessor :books

def initialize(input_books)
  @books = input_books
end

def book_info(book_title)
  for book in @books
    if book[:title] == book_title
      return book
    end
  end
end



end
