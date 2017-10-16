#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: celestial_body.rb
#    Created:       <2017/10/16 12:11:10>
#    Last Modified: <2017/10/16 17:07:23>

class CelestialBody
  attr_accessor :type, :name
end

altair = CelestialBody.new
altair.name = 'Altair'
altair.type = 'star'
polaris = altair
polaris.name = 'Polaris'

# puts altair.object_id, polaris.object_id

puts altair.inspect, polaris.inspect

vega = CelestialBody.new
puts vega.inspect
