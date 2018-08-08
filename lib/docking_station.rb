class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
    @max = 20
  end

  def release_bike
    fail 'No bikes available' if @bikes.empty?
    @bikes.last
  end

  def dock(my_bike)
    fail 'No space available' if @bikes.length == @max
    @bikes << my_bike
    @bikes.last
  end

  # def full
  #   fail 'No space available' if @bike != nil
  # end

end

class Bike
  def working
  end
end

docking_station = DockingStation.new
