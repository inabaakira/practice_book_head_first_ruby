#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: small_oven.rb
#    Created:       <2017/11/26 23:15:59>
#    Last Modified: <2017/11/26 23:24:04>

class SmallOven
  attr_accessor :contents

  def turn_on
    puts "Turning oven on."
    @state = "on"
  end

  def turn_off
    puts "Turning oven off."
    @state = "off"
  end

  def bake
    unless @state == "on"
      return "You need to turn the oven on first!"
    end

    if @contents == nil
      return "There's nothing in the oven!"
    end

    "golden-brown #{contents}"
  end
end

# dinner = ['turkey', 'casserole', 'pie']
# dinner = ['turkey', nil, 'pie']
dinner = ['turkey', 'casserole, 'pie']
oven = SmallOven.new
# oven.turn_on
oven.turn_off
dinner.each do |item|
  oven.contents = item
  puts "Serving #{oven.bake}."
end
