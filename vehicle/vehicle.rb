class Vehicle
  attr_reader   :position
  attr_accessor :out_of_order

  def initialize town=:Roubaix
    @position = town
    @out_of_order = false
  end

  def move where
    return @position if out_of_order
    @position = where
  end
end