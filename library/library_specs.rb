require('minitest/autorun')
require('minitest/rg')
require_relative('library')

class TestLibrary < MiniTest::Test

  @books = [
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







end