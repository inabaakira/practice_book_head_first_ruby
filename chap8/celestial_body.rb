#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: celestial_body.rb
#    Created:       <2017/10/16 12:11:10>
#    Last Modified: <2017/10/16 19:03:55>

class CelestialBody
  attr_accessor :type, :name
end

default_body = CelestialBody.new
default_body.type = 'planet'
bodies = Hash.new(default_body)

bodies['Mars'].name = 'Mars'
p bodies['Mars']

bodies['Europa'].name = 'Europa'
bodies['Europa'].type = 'moon'
p bodies['Europa']

bodies['Venus'].name = 'Venus'
p bodies['Venus']

p bodies['Mars']
p bodies['Europa']
