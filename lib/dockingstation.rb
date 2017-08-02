class DockingStation

  def initialize
    @bikes=[]
  end

  def release_bike
    raise "no bikes available" if empty?
    @bikes
  end

attr_reader :bike

  def dock(bike)
    raise "the dock is full" if full?
    @bikes << bike
  end

private

  def full?
    @bikes.count >= 20
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
