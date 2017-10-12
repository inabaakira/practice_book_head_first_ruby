#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: exercise1.rb
#    Created:       <2017/10/12 21:21:54>
#    Last Modified: <2017/10/12 21:24:01>

my_hash = { "one" => "two", :three => "four", 5 => "six" }
puts my_hash[5]
puts my_hash["one"]
puts my_hash[:three]
my_hash["seven"] = 8
puts my_hash["seven"]
