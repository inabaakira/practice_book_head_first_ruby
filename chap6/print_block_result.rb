#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: print_block_result.rb
#    Created:       <2017/10/08 12:44:44>
#    Last Modified: <2017/10/08 12:48:02>

def print_block_result
  block_result = yield
  puts block_result
end

print_block_result { 1 + 1 }

print_block_result do
  "I'm not the last expression, so I'm not the return value."
  "I'm the result!"
end

print_block_result { "I hated Truncated".include?("Truncated") }
