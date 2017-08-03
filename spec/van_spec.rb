require 'dockingstation'

describe Van do
  it 'moves bikes to the van storage' do
    van1=Van.new
    bike1=Bike.new
    bike2=Bike.new
    van1.to_van(bike1, bike2)
    expect(van1.van_storage).to include bike1, bike2
  end

  it 'moves broken bikes to garage' do
    van1=Van.new
    bike1=Bike.new
    bike2=Bike.new
    garage1=Garage.new
    van1.to_van(bike1, bike2)
    van1.to_garage(garage1)
    expect(garage1.unfixed).to include bike1, bike2
  end

  it 'moves 3 bikes back to station' do
    van1=Van.new
    bike1=Bike.new
    bike2=Bike.new
    bike3=Bike.new
    station1=DockingStation.new
    van1.to_van(bike1, bike2, bike3)
    van1.to_station(station1)
    expect(station1.bikes).to include bike1, bike2, bike3
  end

end
