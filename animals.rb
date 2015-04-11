#!/usr/bin/ruby2.0 --
#-*- mode: ruby-mode; coding: utf-8 -*-
# file: fuzzy_friends.rb
#    Created:       <2015/03/12 00:15:21>
#    Last Modified: <2015/03/19 19:35:14>

class Animal

  attr_reader :name, :age

  # def initialize(value)
  #   if value == ""
  #     raise "Name can't be blank!"
  #   end
  #   @name = value
  # end

  def name=(value)
    if value == ""
      raise "Name can't be blank!"
    end
    @name = value
  end

  def age=(value)
    if value < 0
      raise "An age of #{value} isn't valid!"
    end
    @age = value
  end

  def talk
    puts "#{@name} says Bark!"
  end

  def move(destination)
    puts "#{@name} runs to the #{destination}."
  end

  def report_age
    puts "#{@name} is #{@age} years old."
  end

end

class Bird < Animal
  def talk
    puts "#{name} says Chirp! Chirp!"
  end
  def move(destination)
    puts "#{name} flies to the #{destination}."
  end
end

class Dog < Animal

  def to_s
    "#{@name} the dog, age #{@age}"
  end

end

class Cat < Animal
  def talk
    puts "#{name} says Meow!"
  end
  def move(destination)
    puts "#{name} runs to the #{destination}."
  end
end

class Armadillo < Animal

  def move(destination)
    puts "#{@name} unrolls!"
    # super(destination)
    super
  end
end
