#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: votes.rb
#    Created:       <2017/10/12 20:52:31>
#    Last Modified: <2017/10/12 20:53:05>

lines = []
File.open("votes.txt") do |file|
  lines = file.readlines
end
