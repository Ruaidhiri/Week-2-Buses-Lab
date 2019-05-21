class BusStop

  attr_reader(:name, :queue)

  def initialize(name, queue)
    @name = name
    @queue = queue
  end

  def add_to_queue(person)
    @queue << person
  end

  def queue_length
    return @queue.count
  end

  def empty_queue
    @queue = []
  end

end
