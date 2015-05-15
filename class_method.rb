#!/usr/bin/ruby --
#-*- mode: ruby-mode; coding: utf-8 -*-
# file: class_method.rb
#    Created:       <2015/05/12 20:45:45>
#    Last Modified: <2015/05/12 20:46:52>

class MyClass
  def MyClass.my_class_method(p1, p2)
    puts "Hello from MyClass!"
    puts "My parameters: #{p1}, #{p2}"
  end
end
