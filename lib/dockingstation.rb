class DockingStation

  def initialize
    @bikes=[]
  end

  def release_bike
    raise "no bikes available" if @bikes.empty?
    @bikes
  end

attr_reader :bike

  def dock(bike)
    raise "the dock is full" if @bikes.count >= 20
    @bikes << bike
  end

end

class Bike
  def working?
    true
  end
end


#https://github.com/makersacademy/course/tree/master/boris_bikes
