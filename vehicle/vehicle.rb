class Vehicle
  attr_reader :position

  def initialize town=:Roubaix
    @position = town
  end

  def move where
    @position = where
  end
end