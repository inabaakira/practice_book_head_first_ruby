#!/usr/bin/env ruby
#-*- mode: enh-ruby; coding: utf-8 -*-
# file: format.rb
#    Created:       <2017/03/20 13:48:23>
#    Last Modified: <2017/03/20 13:51:03>

puts format("%12s | %s", "Product", "Cost in Cents")
puts "-" * 30
puts format("%12s | %2i", "Stamps", 50)
puts format("%12s | %2i", "Paper Clips", 5)
puts format("%12s | %2i", "Tape", 99)
