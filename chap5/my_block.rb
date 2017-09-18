#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: my_block.rb
#    Created:       <2017/09/17 19:09:58>
#    Last Modified: <2017/09/17 19:58:48>

def my_method(&my_block)
  puts "We're in the method, about to invoke your block!"
  my_block.call
  puts "We're back in the method!"
end

my_method do
  puts "We're in the block!"
end
