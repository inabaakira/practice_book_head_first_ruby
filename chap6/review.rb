#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: review.rb
#    Created:       <2017/10/07 12:46:23>
#    Last Modified: <2017/10/07 12:55:35>

File.open("reviews.txt") do |review_file|
  lines = review_file.readlines
end
puts "Line 4: #{lines[3]}"
puts "Line 1: #{lines[0]}"
