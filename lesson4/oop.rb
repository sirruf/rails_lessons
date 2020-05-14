#!/usr/bin/env ruby
#
#
class CoolCar
  attr_accessor :color, :seats, :engine_type, :reg_number

  def initialize(color, seats, engine_type, reg_number)
    @color = color
    @seats = seats
    @engine_type = engine_type
    @reg_number = reg_number
  end

  # def color
  #   @color
  # end
  #
  # def color=(new_color)
  #   @color = new_color
  # end

  def self.make_cars(count = 1)
    result = []
    int = 0
    count.times do
      int = int + 1
      car = CoolCar.new('red', 4, 'diesel', int)
      result << car
    end
    result
  end

  def upgrade(color, engine_type, seats)
    @color = color
    @engine_type = engine_type
    @seats = seats

    self
  end

  def engine_on
    puts "Двигатель а/м с г.н. #{@reg_number} включен"
  end

  def engine_off
    puts "Двигатель а/м с г.н. #{@reg_number} выключен"
  end
end
# cars = CoolCar.make_cars(3)
# puts cars.class

