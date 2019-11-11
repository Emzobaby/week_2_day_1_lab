require('minitest/autorun')
require('minitest/rg')
require_relative('library')

class TestLibrary < MiniTest::Test

  @@books = [
    {
  title: "lord_of_the_rings",
  rental_details: {
   student_name: "Jeff",
   date: "01/12/16"
  }
},
{
  title: "50_shades_of_grey",
  rental_details: {
   student_name: "Doris",
   date: "03/03/16"
  }
},
{
  title: "the_handmaids_tale",
  rental_details: {
   student_name: "Suzie",
   date: "01/10/16"
  }
}
  ]

  # def test_get_books
  #   glasgow_library = Library.new(@@books)
  #    assert_equal([
  #      {
  #    title: "lord_of_the_rings",
  #    rental_details: {
  #     student_name: "Jeff",
  #     date: "01/12/16"
  #    }
  #  },
  #  {
  #    title: "50_shades_of_grey",
  #    rental_details: {
  #     student_name: "Doris",
  #     date: "03/03/16"
  #    }
  #  },
  #  {
  #    title: "the_handmaids_tale",
  #    rental_details: {
  #     student_name: "Suzie",
  #     date: "01/10/16"
  #    }
  #  }
  #    ], glasgow_library.books)
  # end

  def test_book_info
    glasgow_library = Library.new(@@books)

    assert_equal(
      {
      title: "the_handmaids_tale",
      rental_details: {
       student_name: "Suzie",
       date: "01/10/16" }
     },
      glasgow_library.book_info("the_handmaids_tale"))
  end

  def test_get_rental_details
    glasgow_library = Library.new(@@books)
    assert_equal(
      {
       student_name: "Suzie",
       date: "01/10/16"
     },
      glasgow_library.get_rental_details("the_handmaids_tale"))
  end

  def test_add_new_book
      glasgow_library = Library.new(@@books)
      glasgow_library.add_new_book("the_jungle_book")
      assert_equal([
        {
      title: "lord_of_the_rings",
      rental_details: {
       student_name: "Jeff",
       date: "01/12/16"
      }
    },
    {
      title: "50_shades_of_grey",
      rental_details: {
       student_name: "Doris",
       date: "03/03/16"
      }
    },
    {
      title: "the_handmaids_tale",
      rental_details: {
       student_name: "Suzie",
       date: "01/10/16"
      }
    },
    {
      title: "the_jungle_book",
      rental_details: {
       student_name: "",
       date: ""
      }
    }
      ], glasgow_library.books)
  end

  def test_change_rental_details
    glasgow_library = Library.new(@@books)
    glasgow_library.change_rental_details("50_shades_of_grey", "Paddy", "01/12/19")
    assert_equal({
     student_name: "Paddy",
     date: "01/12/19"
    }, glasgow_library.books[1][:rental_details])
  end

end
