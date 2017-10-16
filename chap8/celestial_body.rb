#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: celestial_body.rb
#    Created:       <2017/10/16 12:11:10>
#    Last Modified: <2017/10/16 16:23:09>

class CelestialBody
  attr_accessor :type, :name
end

altair = CelestialBody.new
altair.name = 'Altair'
altair.type = 'star'
polaris = CelestialBody.new
polaris.name = 'Polaris'
polaris.type = 'star'
vega = CelestialBody.new
vega.name = 'Vega'
vega.type = 'star'

puts altair.name, polaris.name, vega.name

puts altair.object_id
puts polaris.object_id
puts vega.object_id
