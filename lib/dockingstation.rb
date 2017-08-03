class DockingStation

DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @brokenbikes = []
    @capacity = capacity
  end

  def release_bike
    raise "no bikes available" if empty?
    @bikes.pop
  end

attr_reader :bikes, :capacity, :brokenbikes


  def dock(anybike, brokenstatus=false)
    raise "the dock is full" if full?
    anybike.broken if brokenstatus
    anybike.working? ? @bikes << anybike : @brokenbikes << anybike 
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

  def initialize(working=true)
    @working=working
  end

  def working?
    @working
  end

  def broken
    @working=false
  end
end


#https://github.com/makersacademy/course/tree/master/boris_bikes
