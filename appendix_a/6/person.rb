#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: person.rb
#    Created:       <2017/12/23 12:47:48>
#    Last Modified: <2017/12/23 18:41:32>

class Person
  def speak
    puts "Hello, there"
  end
end

person = Person.new
person.speak

superhero = Person.new
def superhero.fly
  puts "Up we go!"
end
superhero.fly

def superhero.speak
  puts "Off to fight crime!"
end
superhero.speak
