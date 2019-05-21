require("minitest/autorun")
require("minitest/rg")
require_relative("../person")

class PersonTest < MiniTest::Test

  def setup
    @Person = Person.new("Bob", "40")
  end

  def test_name
    assert_equal("Bob", @Person.name)
  end

  def test_age
    assert_equal("40", @Person.age)
  end

end
