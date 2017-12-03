#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: eat.rb
#    Created:       <2017/12/03 22:24:53>
#    Last Modified: <2017/12/04 00:03:55>

class PorridgeError < StandardError
end

class BeddingError < StandardError
end

def eat
  raise PorridgeError, "too hot"
end

def sleep
  raise BeddingError, "too soft"
end

begin
  eat
rescue BeddingError => error
  puts "This bed is #{error.message}!"
rescue PorridgeError => error
  puts "This porridge is #{error.message}!"
end

begin
  sleep
rescue BeddingError => error
  puts "This bed is #{error.message}!"
rescue PorridgeError => error
  puts "This porridge is #{error.message}!"
end
