#!/usr/bin/ruby2.0 --
#-*- mode: ruby-mode; coding: utf-8 -*-
# file: vehicle_methods.rb
#    Created:       <2015/03/11 21:43:56>
#    Last Modified: <2017/03/06 14:50:15>

def accelerate
  puts "Stepping on the gas"
  puts "Speeding up"
end

def sound_horn
  puts "Pressing the horn button"
  puts "Beep beep!"
end

def use_headlights(brightness = "low-beam")
  puts "Turning on #{brightness} headlights"
  puts "Watch out for deer!"
end

sound_horn
accelerate
use_headlights
use_headlights("high-beam")

def mileage(miles_driven, gas_used)
  if gas_used == 0
    return 0.0
  end
  # return miles_driven / gas_used
  miles_driven / gas_used
end

trip_mileage = mileage(400, 12)
puts "You got #{trip_mileage} MPG on this trip."

lifetime_mileage = mileage(11432, 366)
puts "This car average #{lifetime_mileage} MPG."

puts mileage(0, 0)

