#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: review.rb
#    Created:       <2017/10/07 12:46:23>
#    Last Modified: <2017/10/10 19:50:39>

def find_adjective(string)
  words = string.split(" ")
  index = words.find_index("is")
  words[index + 1]
end

lines = []

File.open("reviews.txt") do |review_file|
  lines = review_file.readlines
end

relevant_lines = lines.find_all { |line| line.include?("Truncated") }
reviews = relevant_lines.reject { |line| line.include?("--") }

adjectives = reviews.map { |review| find_adjective(review) }

puts adjectives
