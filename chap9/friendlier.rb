#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: friendly.rb
#    Created:       <2017/11/02 15:20:23>
#    Last Modified: <2017/11/02 15:24:34>

module Friendly
  def method_one
    puts "hello from Friendly"
  end
end

module Friendlier
  def method_two
    puts "hello from Friendlier"
  end
end

class MyClass
  include Friendly
  include Friendlier
end

my_object = MyClass.new
my_object.method_one
my_object.method_two
