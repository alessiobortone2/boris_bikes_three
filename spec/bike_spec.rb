require 'dockingstation'

describe Bike do
  it 'is working?' do
    expect(Bike.new).to respond_to(:working?)
  end
end
