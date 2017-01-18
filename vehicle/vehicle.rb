class Vehicle
  attr_reader   :position
  attr_accessor :out_of_order
  @@counter = 0

  def initialize town=:Roubaix
    @position = town
    @out_of_order = false
    @@counter += 1
  end

  # return the number of existing objects in a ruby session
  def self.count
    @@counter
  end

  def move where
    return @position if out_of_order
    @position = where
  end

  def self.moving_method
    :driving
  end
  
end