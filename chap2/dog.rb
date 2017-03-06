#!/usr/bin/ruby2.0 --
#-*- mode: ruby-mode; coding: utf-8 -*-
# file: dog.rb
#    Created:       <2015/03/13 16:32:13>
#    Last Modified: <2017/03/06 18:09:34>

class Dog

  attr_reader :name, :age

  def name=(value)
    if value == ""
      raise "Name can't be blank!'"
    end
    @name = value
  end

  def age=(value)
    if value < 0
      raise "An age of #{value} isn't valid!"
    end
    @age = value
  end

  def report_age
    puts "#{@name} is #{@age} years old."
  end

  def talk
    puts "#{@name} says Bark!"
  end

  def move(destination)
    puts "#{@name} runs to the #{destination}."
  end
end
