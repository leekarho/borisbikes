require "docking_station"

describe DockingStation do

  describe '#release_bike' do
    it 'will not return a bike if none are available' do
    expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end

  it "responds to release_bike" do
  expect(subject).to respond_to :release_bike
  end

  it "gets a working bike" do
    bike = Bike.new
    expect(bike).to respond_to :working
  end

  it "returns a bike when asked if it has any bikes" do
    expect(subject).to respond_to :bikes
  end

  it "returns a bike when asked if it has any bikes" do
    my_bike = Bike.new
    subject.dock(my_bike)
    expect(subject.bikes).to eq([my_bike])
  end

  describe '#dock' do
    it "docks the bike" do
      expect(subject).to respond_to :dock
    end
    it "docks the bike" do
      my_bike = Bike.new
      expect(subject.dock(my_bike)).to eq(my_bike)
    end
    it "returns error when docking station is full" do
      20.times {subject.dock(Bike.new)}
      my_bike = Bike.new
      expect { subject.dock(my_bike) }.to raise_error 'No space available'
    end
    it "has space for 20 bikes" do
      19.times {subject.dock(Bike.new)}
      my_bike = Bike.new
      expect(subject.dock(my_bike)).to eq my_bike
    end
  end

end
