#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: yield.rb
#    Created:       <2017/09/20 22:37:01>
#    Last Modified: <2017/09/20 22:40:21>

def twice
  yield
  yield
end

twice do
  puts "Woooo!"
end

def give
  yield "2 turtles doves", "1 partridge"
end

give do |present1, present2|
  puts "My method gave to me..."
  puts present1, present2
end
