class Vehicle
  attr_reader :position

  def initialize
    @position = 'Roubaix'
  end

  def move where
    @position = where
  end
end