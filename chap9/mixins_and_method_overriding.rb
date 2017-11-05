#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: mixins_and_method_overriding.rb
#    Created:       <2017/11/05 16:03:30>
#    Last Modified: <2017/11/05 16:09:01>

class MySuperclass
end

module MyModule
  def my_method
    puts "hello from MyModule"
  end
end

class MyClass < MySuperclass
  include MyModule
  def my_method
    puts "hello from MyClass"
  end
end

p MyClass.ancestors

MyClass.new.my_method
