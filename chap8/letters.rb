#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: letters.rb
#    Created:       <2017/10/24 20:59:12>
#    Last Modified: <2017/10/24 21:00:30>

letters = ['a', 'c', 'a', 'b', 'c', 'a']

counts = Hash.new(0)

letters.each do |letter|
  counts[letter] += 1
end

p counts
