#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: celestial_body.rb
#    Created:       <2017/10/16 12:11:10>
#    Last Modified: <2017/10/21 20:06:35>

class CelestialBody
  attr_accessor :type, :name
end

bodies = Hash.new do |hash, key|
  body = CelestialBody.new
  body.type = "planet"
  hash[key] = body
  body
end

p bodies['Europa']
p bodies['Europa']
bodies['Europa'].type = 'moon'
p bodies['Europa']

p bodies['Venus']
