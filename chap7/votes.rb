#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: votes.rb
#    Created:       <2017/10/12 20:52:31>
#    Last Modified: <2017/10/15 03:05:08>

lines = []
File.open("votes.txt") do |file|
  lines = file.readlines
end

votes = Hash.new(0)
lines.each do |line|
  name = line.chomp
  name.upcase!
  votes[name] += 1
end

votes.each do |name, count|
  puts "#{name}: #{count}"
end
