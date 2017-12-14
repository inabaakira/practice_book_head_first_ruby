#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: sandwich.rb
#    Created:       <2017/12/14 20:48:12>
#    Last Modified: <2017/12/14 20:48:50>

require 'sinatra'

get('/sandwich') do
  'Make your own sandwich!'
end
