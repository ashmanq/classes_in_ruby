
class Library

  attr_reader :books

  def initialize(books)
    @books = books
  end

  def get_book_index_no(book_title)
    index = @books.find_index {|x| x[:title] ==  book_title }
    return index
  end

  def get_book_info_using_title(book_title)
    #index = @books.find_index {|x| x[:title] ==  book_title }
    return @books[get_book_index_no(book_title)]
  end

  def get_rental_details_using_title(book_title)
    #book = get_book_info_using_title(book_title) #reusing get book info using title code
    return @books[get_book_index_no(book_title)][:rental_details]
  end

  def add_new_book(book_title)
    @books.push(
      {
      title: book_title,
      rental_details: {
        student_name: "",
        date: ""
        }
      }
    )
  end

  def update_book_rental_details(new_book_details)
    book_index = get_book_index_no(new_book_details[:title])
    @books[book_index] = new_book_details
  end

end
