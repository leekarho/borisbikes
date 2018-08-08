require "./lib/docking_station"

DS = DockingStation.new
20.times{ DS.dock(Bike.new)}
