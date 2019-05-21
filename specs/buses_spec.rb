require("minitest/autorun")
require("minitest/rg")
require_relative("../buses")
require_relative("../person")
require_relative("../bus_stop")

class BusTest < MiniTest::Test

  def setup
    @Bus = Bus.new("22", "Craigmillar", [])
    @BusStop = BusStop.new("Princes Street", [])
    @Person = Person.new("Bob", "45")
    @Person2 = Person.new("Andy", "30")
    @Person3 = Person.new("Chris", "17")

  end

  def test_bus_route
    assert_equal("22", @Bus.route)
  end

  def test_bus_destination
    assert_equal("Craigmillar", @Bus.destination)
  end

  def test_drive
    assert_equal("Brum brum", @Bus.drive)
  end

  def test_passenger_count__empty
    assert_equal(0, @Bus.passenger_count)
  end

  def test_passenger_count__not_empty
    @Bus.pick_up(@Person)
    assert_equal(1, @Bus.passenger_count)
  end

  def test_passenger_drop_off
    @Bus.pick_up(@Person)
    @Bus.pick_up(@Person2)
    assert_equal(2, @Bus.passenger_count)

    @Bus.drop_off(@Person2)
    assert_equal([@Person], @Bus.list_passengers )
  end

  def test_empty_bus
    @Bus.pick_up(@Person)
    @Bus.pick_up(@Person2)
    @Bus.empty_bus
    assert_equal(0, @Bus.passenger_count)
  end

  def test_pick_up_queue
    @BusStop.add_to_queue(@Person)
    @BusStop.add_to_queue(@Person2)
    @BusStop.add_to_queue(@Person3)
    @Bus.pick_up_queue(@BusStop.queue)
    @BusStop.empty_queue
    assert_equal(3, @Bus.passenger_count)
    assert_equal(0, @BusStop.queue_length)
  end

end
