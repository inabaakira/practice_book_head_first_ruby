#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: review.rb
#    Created:       <2017/10/07 12:46:23>
#    Last Modified: <2017/10/07 12:51:02>

review_file = File.open("reviews.txt")
puts review_file.class
lines = review_file.readlines
review_file.close
puts "Line 4: #{lines[3]}"
puts "Line 1: #{lines[0]}"
