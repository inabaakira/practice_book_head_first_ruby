#!/usr/bin/ruby --
#-*- mode: ruby-mode; coding: utf-8 -*-
# file: format.rb
#    Created:       <2015/03/25 19:43:58>
#    Last Modified: <2015/03/25 19:44:54>

def test_format(format_string)
  print "Testing '#{format_string}': "
  puts format(format_string, 12.3456)
end

