require("minitest/autorun")
require("minitest/rg")
require_relative("../person")
require_relative("../buses")
require_relative("../bus_stop")

class BusStopTest < MiniTest::Test

  def setup
    @BusStop = BusStop.new("Princes Street", [])
    @Person = Person.new("Bob", "35")
    @Person2 = Person.new("Anne", "34")
    @Person3 = Person.new("Chris", "17")
    @Bus = Bus.new("22", "Craigmillar", [])
  end

  def test_name
    assert_equal("Princes Street", @BusStop.name)
  end

  def test_queue
    assert_equal(0, @BusStop.queue_length)
  end

  def test_add_to_queue
    @BusStop.add_to_queue(@Person)
    assert_equal(1, @BusStop.queue_length)
  end

  # def test_queue_empty
  #   @BusStop.add_to_queue(@Person)
  #   @BusStop.add_to_queue(@Person3)
  #   @BusStop.add_to_queue(@Person2)
  #
  #   assert_equal(0, @BusStop.queue_length)
  # end

end
