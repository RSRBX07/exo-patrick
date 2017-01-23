require_relative '../lib/vehicle/plane.rb'

RSpec.describe Plane do
  it 'is grounded when created' do
    plane = Plane.new
    expect(plane.status).to be :grounded
  end

  it 'take off' do
    plane = Plane.new
    plane.takeoff
    expect(plane.status).to be :flying
  end

  it 's landing' do
    plane = Plane.new
    plane.landing
    expect(plane.status).to be :grounded
  end

  it 'doent take off if is out of order' do
    plane = Plane.new
    plane.out_of_order = true
    plane.takeoff
    expect(plane.status).to be :grounded
  end
  
end

