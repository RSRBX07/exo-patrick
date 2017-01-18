require_relative 'vehicle.rb'

class Plane < Vehicle
  attr_reader :status

  def initialize
    super
    @status = :grounded
  end

  def takeoff
    @status = :flying
  end

  def landing
    @status = :grounded
  end

end