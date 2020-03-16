class Library

  attr_reader :books

  def initialize(books)
    @books = books
  end

  def get_book_info_using_title(book_title)
    return @books.bsearch {|x| x[:title] ==  book_title }
  end

  def get_rental_details_using_title(book_title)
    book = @books.bsearch{|x| x[:title] ==  book_title }
    return book[:rental_details]
  end


end
