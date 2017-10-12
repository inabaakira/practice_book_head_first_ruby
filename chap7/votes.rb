#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: votes.rb
#    Created:       <2017/10/12 20:52:31>
#    Last Modified: <2017/10/12 23:48:39>

lines = []
File.open("votes.txt") do |file|
  lines = file.readlines
end

votes = {}
lines.each do |line|
  name = line.chomp
  if votes[name] != nil
    votes[name] += 1
  else
    votes[name] = 1
  end
end

p votes
