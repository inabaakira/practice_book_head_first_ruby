#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: review.rb
#    Created:       <2017/10/07 12:46:23>
#    Last Modified: <2017/10/07 13:01:20>

lines = []

File.open("reviews.txt") do |review_file|
  lines = review_file.readlines
end
puts lines.length
puts "Line 4: #{lines[3]}"
puts "Line 1: #{lines[0]}"
