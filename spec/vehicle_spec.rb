require_relative '../vehicle/vehicle.rb'

RSpec.describe Vehicle do
  it 'is in a defined position' do
    vehicle = Vehicle.new
    expect(vehicle.position).not_to be_nil
    expect(vehicle.position.length).to be > 0
  end

  it 'move' do
    vehicle = Vehicle.new
    vehicle.move :Lille
    expect(vehicle.position).not_to be_nil
    expect(vehicle.position.length).to be > 0
  end
end

