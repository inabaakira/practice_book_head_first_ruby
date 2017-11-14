#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: steak.rb
#    Created:       <2017/11/14 21:51:14>
#    Last Modified: <2017/11/14 22:19:52>

class Steak
  GRADE_SCORES = {"Prime" => 3, "Choice" => 2, "Select" => 1}

  attr_accessor :grade

  def >(other)
    GRADE_SCORES[grade] > GRADE_SCORES[other.grade]
  end
end

first_steak = Steak.new
first_steak.grade = "Prime"
second_steak = Steak.new
second_steak.grade = "Choice"

if first_steak > second_steak
  puts "I'll take #{first_steak.inspect}"
end
