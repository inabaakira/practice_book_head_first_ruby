#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: twice.rb
#    Created:       <2017/09/18 12:56:52>
#    Last Modified: <2017/09/18 12:59:06>

def twice(&my_block)
  puts "In the method, about to call the block!"
  my_block.call
  puts "Back in the method, about to call the block again!"
  my_block.call
  puts "Back in the method, about to return!"
end

twice do
  puts "Woooo!"
end
