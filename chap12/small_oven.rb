#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: small_oven.rb
#    Created:       <2017/11/26 23:15:59>
#    Last Modified: <2017/12/02 20:45:52>

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

dinner = ['turkey', nil, 'pie']
oven = SmallOven.new
oven.turn_off
dinner.each do |item|
  begin
    oven.contents = item
    puts "Serving #{oven.bake}"
  rescue
    puts "Error: There's nothing in the oven!"
  end
end
