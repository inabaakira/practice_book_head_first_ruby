#!/usr/bin/ruby --
#-*- mode: ruby-mode; coding: utf-8 -*-
# file: demo_self.rb
#    Created:       <2015/04/15 00:26:36>
#    Last Modified: <2015/04/15 00:37:01>

class MyClass
  def first_method
    puts "Current instance within first_method: #{self}"
    self.second_method
  end

  def second_method
    puts "Current instance within second_method: #{self}"
  end
end
