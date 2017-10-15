#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: volume.rb
#    Created:       <2017/10/15 13:10:30>
#    Last Modified: <2017/10/15 13:16:46>

def volume(options)
  options[:width] * options[:height] * options[:depth]
end

result = volume(width: 10, height: 5, depth: 2.5)
puts "Valume is #{result}"
