#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: ask_me_anything.rb
#    Created:       <2017/12/23 18:42:04>
#    Last Modified: <2017/12/23 18:52:10>

# object = Object.new
# object.win

# class AskMeAnything
#   def method_missing(method_name)
#     "You called #{method_name.to_s}"
#   end
# end

# object = AskMeAnything.new
# p object.this_method_is_not_defined
# p object.also_undefined

class AskMeAnything
  def method_missing(method_name, arg1, arg2)
    "You called #{method_name.to_s} with #{arg1} and #{arg2}."
  end
end

object = AskMeAnything.new
p object.with_args(127.6, "hello")
