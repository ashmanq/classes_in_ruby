require ('minitest/reporters')
require ('minitest/autorun')
require_relative('../library')

MiniTest::Reporters.use! MiniTest::Reporters::SpecReporter.new()

class TestLibrary < MiniTest::Test
  def setup
    books =[
      {
        title: "lord_of_the_rings",
        rental_details: {
          student_name: "Jeff",
          date: "01/12/16"
        }
      },
      {
        title: "harry_potter",
        rental_details: {
          student_name: "Hermione",
          date: "02/02/12"
        }
      },
      {
        title: "the_hitchhikers_guide_to_the_galaxy",
        rental_details: {
          student_name: "Ford",
          date: "01/01/42"
        }
      }
    ]
    @library = Library.new(books)
  end

  def test_get_book()
    books =[
      {
        title: "lord_of_the_rings",
        rental_details: {
          student_name: "Jeff",
          date: "01/12/16"
        }
      },
      {
        title: "harry_potter",
        rental_details: {
          student_name: "Hermione",
          date: "02/02/12"
        }
      },
      {
        title: "the_hitchhikers_guide_to_the_galaxy",
        rental_details: {
          student_name: "Ford",
          date: "01/01/42"
        }
      }
    ]
    assert_equal(books, @library.books())
  end

  def test_get_book_info_using_title()
    result = @library.get_book_info_using_title("the_hitchhikers_guide_to_the_galaxy")
    assert_equal("Ford", result[:rental_details][:student_name])
  end

  def test_get_rental_details_using_title()
    result = @library.get_rental_details_using_title("harry_potter")
    assert_equal("02/02/12", result[:date])
  end

  def test_add_new_book()
    @library.add_new_book("Catch_22")
    books = @library.books()
    assert_equal(4, books.length) #checks length of book array
  end

  def test_change_book_rental_details()
    new_book_details = {
      title: "lord_of_the_rings",
      rental_details: {
        student_name: "Jason Stratham",
        date: "01/01/20"
      }
    }
  @library.update_book_rental_details(new_book_details)
  result = @library.get_book_info_using_title("lord_of_the_rings")

  assert_equal(new_book_details, result)
  end


end
