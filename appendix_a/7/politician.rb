#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: politician.rb
#    Created:       <2017/12/23 18:57:52>
#    Last Modified: <2017/12/23 18:59:14>

class Politician
  def method_missing(method_name, argument)
    puts "I promise to #{method_name.to_s} #{argument}"
  end
end

politician = Politician.new
politician.lower("taxes")
politician.improve("education")
