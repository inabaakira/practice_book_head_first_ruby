#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: friendly.rb
#    Created:       <2017/11/02 15:20:23>
#    Last Modified: <2017/11/02 15:21:33>

module Friendly
  def my_method
    puts "hello from Friendly"
  end
end

class ClassOne
  include Friendly
end

class ClassTwo
  include Friendly
end

ClassOne.new.my_method
ClassTwo.new.my_method
