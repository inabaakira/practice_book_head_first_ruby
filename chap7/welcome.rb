#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: welcome.rb
#    Created:       <2017/10/15 13:47:06>
#    Last Modified: <2017/10/15 13:49:50>

def welcome(greeting: "Welcome", name: nil)
  puts "#{greeting}, #{name}"
end

welcome(greeting: "Hello", name: "Amy")
my_arguments = { greeting: "Hello", name: "Amy" }
welcome(my_arguments)
welcome(name: "Amy")
welcome(greting: "Hello", nme: "Amy") # error
