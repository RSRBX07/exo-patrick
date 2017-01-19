require_relative 'counter.rb'

class Vehicle
  attr_reader   :position
  attr_accessor :out_of_order

  def initialize town=:Roubaix
    @position = town
    @out_of_order = false
    Counter.add_one self.class
  end

  # return the number of existing objects in a ruby session
  def self.count
    Counter.value self
  end

  def move where
    return @position if out_of_order
    @position = where
  end

  def self.moving_method
    :driving
  end
  
end