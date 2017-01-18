require_relative 'vehicle.rb'
require_relative 'plane.rb'

car = Vehicle.new
puts car.inspect
car.move 'Lille'
puts car.inspect

plane = Plane.new
puts plane.inspect
plane.takeoff
puts plane.inspect
plane.move 'Marseille'
puts plane.inspect
plane.landing
puts plane.inspect
