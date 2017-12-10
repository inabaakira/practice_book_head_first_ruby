#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: person.rb
#    Created:       <2017/12/10 19:54:07>
#    Last Modified: <2017/12/10 19:58:29>

class Person
  attr_accessor :name
  def introduction
    "Hello, my name is #{name}!"
  end
end
