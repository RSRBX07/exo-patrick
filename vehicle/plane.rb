require_relative 'vehicle.rb'

class Plane < Vehicle
  attr_reader :status

  def initialize
    super
    @status = :grounded
  end

  def takeoff
    return @status if out_of_order
    @status = :flying
    @status = :flying
  end

  def landing
    return @status if out_of_order
    @status = :grounded
  end

end