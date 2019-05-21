class Bus

attr_reader(:route, :destination)

  def initialize(route, destination, passengers)
    @route = route
    @destination = destination
    @passengers = passengers
  end

  def drive
    return "Brum brum"
  end

  def passenger_count
    return @passengers.count
  end

  def pick_up(passenger)
    @passengers << passenger
  end

  def drop_off(passenger)
    @passengers.delete(passenger)
  end

  def list_passengers
    return @passengers
  end

  def empty_bus
    @passengers = []
  end

  def pick_up_queue(queue)
    for passenger in queue
      pick_up(passenger)
    end
  end

end
