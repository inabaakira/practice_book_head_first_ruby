#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: block_parameters.rb
#    Created:       <2017/09/18 13:25:11>
#    Last Modified: <2017/09/18 19:36:54>

def give(&my_block)
  my_block.call("2 turtle doves", "1 partridge")
end

give do |present1, present2|
  puts "My method gave to me..."
  puts present1, present2
end
