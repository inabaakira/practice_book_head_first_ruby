#!/usr/bin/ruby2.0 --
#-*- mode: ruby-mode; coding: utf-8 -*-
# file: person.rb
#    Created:       <2015/03/13 21:24:26>
#    Last Modified: <2015/03/19 12:27:34>

class Person
  def name=(new_value)
    @storage = new_value
  end
  def name
    @storage
  end

  def greeting
    puts "Hello!"
  end
end

class Employee < Person
  def salary=(new_value)
    @storage = new_value
  end
  def salary
    @storage
  end
end

class Friend < Person

  def greeting
    super
    puts "Glad to see you!"
  end

end
