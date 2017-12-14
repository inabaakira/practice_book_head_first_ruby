#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: hello_web.rb
#    Created:       <2017/12/14 20:14:01>
#    Last Modified: <2017/12/14 20:14:29>

require 'sinatra'

get('/hello') do
  'Hello, web!'
end
