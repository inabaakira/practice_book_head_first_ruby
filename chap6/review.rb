#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: review.rb
#    Created:       <2017/10/07 12:46:23>
#    Last Modified: <2017/10/07 12:48:45>

review_file = File.open("reviews.txt")
puts review_file.class
lines = review_file.readlines
puts "Line 4: #{lines[3]}"
puts "Line 1: #{lines[0]}"
