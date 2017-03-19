#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: camera.rb
#    Created:       <2017/03/08 18:03:52>
#    Last Modified: <2017/03/08 18:06:05>

class Camera
  def load
    puts "Winding film."
  end

  def take_picture
    puts "Triggering shutter."
  end
end

class DigitalCamera < Camera
  def load
    puts "Inserting memory card."
  end
end
