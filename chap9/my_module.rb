#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: my_module.rb
#    Created:       <2017/11/02 13:38:47>
#    Last Modified: <2017/11/02 13:47:51>

module MyModule
  def first_method
    puts "first_method called"
  end

  def second_method
    puts "second_method called"
  end
end

class MyClass
  include MyModule
end

my_object = MyClass.new
my_object.first_method
my_object.second_method
