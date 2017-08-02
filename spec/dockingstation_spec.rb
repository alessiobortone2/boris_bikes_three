require 'dockingstation'

describe DockingStation do

it 'raises error when no docked bike' do
  station = DockingStation.new
  expect{station.release_bike}.to raise_error("no bikes available")
end

it 'raises error when more than the capacity is docked' do
  station = DockingStation.new
  DockingStation::DEFAULT_CAPACITY.times {station.dock(Bike.new)}
  bike1=Bike.new
  expect{station.dock(bike1)}.to raise_error("the dock is full")
end

it 'sets default capacity' do
  station = DockingStation.new
  expect(station.capacity).to eq(20)
end

it 'sees unbroken bikes' do
  station1 = DockingStation.new
  bike1=Bike.new
  station1.dock(bike1, false)
  expect(station1.bikes).to include bike1
end

it 'does not allow docking station to release broken bikes' do
  station1 = DockingStation.new
  bike1=Bike.new
  bike2=Bike.new
  station1.dock(bike1, true)
  station1.dock(bike2, false)
  station1.release_bike == bike2
end

it 'can report broken bikes' do
  station1 = DockingStation.new
  bike1=Bike.new
  station1.dock(bike1, true)
  expect(station1.broken).to include bike1
end
end

=begin
    it 'releases a bike' do
    expect(DockingStation.new).to respond_to(:release_bike)
  end

  it 'releases a new instance of the Bike class' do
    expect(DockingStation.new.release_bike.class).to eq Bike
  end

it 'docks a bike' do
  station = DockingStation.new
  bike2 = station.release_bike
  expect(station.dock(bike2)).to eq bike2
end

it 'sees the bike' do
  station = DockingStation.new
  bike2 = station.release_bike
  station.dock(bike2)
  expect(station.bike).to eq bike2
end


it 'checks if the bike is working' do
  expect(DockingStation.new.release_bike).to respond_to(:working?)
end
=end
