class DockingStation
  attr_reader :bike

  def release_bike
    fail 'No bikes available' unless @bike
    @bike
  end

  def dock(my_bike)
    @bike = my_bike
  end

  def has_bike?

  end

end

class Bike
  def working
  end
end

docking_station = DockingStation.new
