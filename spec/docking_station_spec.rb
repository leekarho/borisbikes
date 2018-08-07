require "docking_station"

describe DockingStation do
  it "responds to release_bike" do
  expect(subject).to respond_to :release_bike
  end
end

describe DockingStation do
  it "gets a working bike" do
    bike = subject.release_bike
    expect(bike).respond_to :working
  end
end
