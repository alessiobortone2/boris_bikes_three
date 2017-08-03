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

attr_accessor :bikes, :capacity, :brokenbikes


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

class Van
  attr_accessor :van_storage

  def initialize
    @van_storage=[]
  end

  def to_van(*bikes)
    @van_storage << bikes
    @van_storage.flatten!
  end

  def to_garage(garage)
    garage.unfixed = @van_storage
  end

  def to_station(station)
    station.bikes = @van_storage
  end


end

class Garage

  attr_reader :unfixed, :fixed

  def initialize
    @fixed=[]
    @unfixed=[]
  end

  def fix_bikes
    @fixed << @unfixed
    @fixed.flatten!
  end

  def back_to_van(van)
    van.van_storage = @fixed
  end

  def unfixed=(*bikes)
    @unfixed << bikes
    @unfixed.flatten!
  end
end


#https://github.com/makersacademy/course/tree/master/boris_bikes
