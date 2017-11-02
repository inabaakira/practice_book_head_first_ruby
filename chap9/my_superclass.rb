#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: friendly.rb
#    Created:       <2017/11/02 15:20:23>
#    Last Modified: <2017/11/02 15:27:41>

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

class MySuperClass
end

class MySubClass < MySuperClass
  include Friendly
  include Friendlier
end

subclass_instance = MySubClass.new
subclass_instance.method_one
subclass_instance.method_two
