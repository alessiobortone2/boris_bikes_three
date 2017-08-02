class DockingStation

  def release_bike
    raise "no bikes available" unless @bike
    @bike
  end

attr_reader :bike

  def dock(bike)
    @bike = bike
  end

end

class Bike
  def working?
    true
  end
end


#https://github.com/makersacademy/course/tree/master/boris_bikes
