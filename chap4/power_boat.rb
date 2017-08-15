#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: power_boat.rb
#    Created:       <2017/08/15 10:30:48>
#    Last Modified: <2017/08/15 10:41:53>

class Boat
  def initialize(name)
    @name = name
  end
end

class PowerBoat < Boat
  def initialize(name, motor_type)
    super(name)
    @motor_type = motor_type
  end

  def info
    puts "Name: #{@name}"
    puts "Motor Type: #{@motor_type}"
  end
end

boat = PowerBoat.new("Guppy", "outboard")
boat.info
