#!/usr/bin/ruby --
#-*- mode: ruby-mode; coding: utf-8 -*-
# file: mage.rb
#    Created:       <2015/03/12 19:42:21>
#    Last Modified: <2015/03/12 19:44:47>

class Mage

  attr_accessor :name, :spell

  def enchant(target)
    puts "#{@name} casts #{@spell} on #{target.name}!"
  end
end
