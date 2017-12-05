#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: small_oven.rb
#    Created:       <2017/11/26 23:15:59>
#    Last Modified: <2017/12/05 23:44:09>

class OvenOffError < StandardError
end

class OvenEmptyError < StandardError
end

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
      raise OvenOffError, "You need to turn the oven on first!"
    end

    if @contents == nil
      raise OvenEmptyError, "There's nothing in the oven!"
    end

    "golden-brown #{contents}"
  end
end

oven = SmallOven.new
oven.turn_off
begin
  oven.turn_on
  oven.contents = nil
  puts "Serving #{oven.bake}."
  oven.turn_off
rescue OvenEmptyError => error
  puts "Error: #{error.message}"
  oven.turn_off
end
