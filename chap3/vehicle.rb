#!/usr/bin/ruby2.0 --
#-*- mode: ruby-mode; coding: utf-8 -*-
# file: vehicle.rb
#    Created:       <2015/03/13 20:38:37>
#    Last Modified: <2017/03/08 17:16:30>

class Vehicle

  attr_accessor :odometer
  attr_accessor :gas_used

  def accelerate
    puts "Floor it!"
  end

  def sound_horn
    puts "Beep! Beep!"
  end

  def steer
    puts "Turn front 2 wheels."
  end

  def mileage
    return @odometer / @gas_used
  end

end

class Car < Vehicle

  # def odometer=(new_value)
  #   @banana = new_value
  # end

  # def odometer
  #   @banana
  # end

  # def gas_used=(new_value)
  #   @apple = new_value
  # end

  # def gas_used
  #   @apple
  # end

end

class Truck < Vehicle

  # attr_accessor :cargo

  # def load_bed(contents)
  #   puts "Securing #{contents} in the truck bed."
  #   @cargo = contents
  # end

end

class Motorcycle < Vehicle
  def steer
    puts "Turn front wheel."
  end
end
