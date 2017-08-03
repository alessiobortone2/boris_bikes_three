require 'dockingstation'

describe Garage do
  it 'stores broken bikes before fixing' do
    bike1=Bike.new
    bike2=Bike.new
    garage1=Garage.new
    garage1.unfixed= bike1, bike2
    expect(garage1.unfixed).to include(bike1)
  end

  it "fixes broken bikes" do
  bike1=Bike.new
  bike2=Bike.new
  garage1=Garage.new
  garage1.unfixed= bike1, bike2
  garage1.fix_bikes
  expect(garage1.fixed).to include bike1, bike2
  end
end
