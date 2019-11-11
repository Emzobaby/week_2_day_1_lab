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

def get_rental_details(book_title)
  for book in @books
    if book[:title] == book_title
      return book[:rental_details]
    end
  end
end

def add_new_book(new_title)
  new_book = {}
  new_book[:title] = new_title
  new_book[:rental_details] = {
    student_name: "",
    date: ""
  }
  @books << new_book
end

end
