require ('minitest/autorun')
require ('./library')

class TestLibrary < MiniTest::Test
  def test_library
    library =Library.new({ 
    title: "lord_of_the_rings",
    rental_details: { 
     student_name: "Jeff", 
     date: "01/12/16"
    }})
    assert_equal(library.books,  { 
    title: "lord_of_the_rings",
    rental_details: { 
     student_name: "Jeff", 
     date: "01/12/16"
    }})
  end

def test_list_books
  return @books
end

end