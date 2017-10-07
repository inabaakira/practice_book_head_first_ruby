#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: review.rb
#    Created:       <2017/10/07 12:46:23>
#    Last Modified: <2017/10/07 20:55:26>

lines = []

File.open("reviews.txt") do |review_file|
  lines = review_file.readlines
end

relevant_lines = []

lines.each do |line|
  if line.include?("Truncated")
    relevant_lines << line
  end
end

puts relevant_lines
