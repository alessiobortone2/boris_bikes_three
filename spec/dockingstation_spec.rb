require 'dockingstation'

describe DockingStation do

it 'raises error when more than one bike is created' do
  station = DockingStation.new
  expect{station.release_bike}.to raise_error("no bikes available")
end

it 'raises error when more than one bike is docked' do
  station = DockingStation.new
  bike1=Bike.new
  bike2=Bike.new
  station.dock(bike1)
  expect{station.dock(bike2)}.to raise_error("the dock is full")
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
