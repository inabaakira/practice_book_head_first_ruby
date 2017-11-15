#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: apple.rb
#    Created:       <2017/11/14 23:55:51>
#    Last Modified: <2017/11/15 00:00:48>

class Apple

  include Comparable

  attr_accessor :weight

  def initialize(weight)
    self.weight = weight
  end

  def <=> (other)
    self.weight <=> other.weight
  end
end

small_apple = Apple.new(0.17)
medium_apple = Apple.new(0.22)
big_apple = Apple.new(0.25)

puts "small_apple > medium_apple:"
puts small_apple > medium_apple
puts "medium_apple < big_apple:"
puts medium_apple < big_apple
