#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: map.rb
#    Created:       <2017/10/10 19:14:50>
#    Last Modified: <2017/10/10 19:49:57>

squares = [2, 3, 4].map { |number| number ** 2 }
cubes = [2, 3, 4].map { |number| number ** 3 }
area_codes = ['1-800-555-0199', '1-402-555-0123'].map do |phone|
  phone.split("-")[1]
end

p squares, cubes, area_codes
