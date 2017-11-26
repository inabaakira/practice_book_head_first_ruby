#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: small_oven.rb
#    Created:       <2017/11/26 23:15:59>
#    Last Modified: <2017/11/27 00:09:23>

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
      raise "You need to turn the oven on first!"
    end

    if @contents == nil
      raise "There's nothing in the oven!"
    end

    "golden-brown #{contents}"
  end
end

oven = SmallOven.new
oven.turn_on
oven.contents = nil
puts "Serving #{oven.bake}"
