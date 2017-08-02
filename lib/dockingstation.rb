class DockingStation

DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    raise "no bikes available" if empty?
    @bikes
  end

attr_reader :bike, :capacity


  def dock(bike)
    raise "the dock is full" if full?
    @bikes << bike
  end

private

  def full?
    @bikes.count >= @capacity
  end

  def empty?
    @bikes.empty?
  end

end

class Bike
  def working?
    true
  end
end


#https://github.com/makersacademy/course/tree/master/boris_bikes
