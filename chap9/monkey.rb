#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: monkey.rb
#    Created:       <2017/11/03 19:46:27>
#    Last Modified: <2017/11/03 20:06:27>


module Curious
  def investigate(thing)
    puts "Look at #{thing}"
  end
end

module Clumsy
  def break(thing)
    puts "Knocks over #{thing}"
  end
end

class Monkey
  include Curious
  include Clumsy
end

bubbles = Monkey.new
bubbles.investigate("vase")
bubbles.break("base")
