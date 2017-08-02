require 'dockingstation'

describe DockingStation do
  it 'releases a bike' do
    expect(DockingStation.new).to respond_to(:release_bike)
  end

  it 'releases a new instance of the Bike class' do
    expect(DockingStation.new.release_bike.class).to eq Bike
  end

  it 'checks if the bike is working' do
    expect(DockingStation.new.release_bike).to respond_to(:working?)
  end


end
