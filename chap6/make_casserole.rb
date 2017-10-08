#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: exe.rb
#    Created:       <2017/10/08 13:33:11>
#    Last Modified: <2017/10/08 14:35:33>

def make_casserole
  puts "Preheat over to 375 degrees"
  ingredients = yield
  puts "Place #{ingredients} in dish"
  puts "Bake for 20 minutes"
end

make_casserole do
  "noodles, celery, and tuna"
end

make_casserole do
  "rice, briccili, and chicken"
end
