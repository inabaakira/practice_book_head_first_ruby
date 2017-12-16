#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: app.rb
#    Created:       <2017/12/14 20:51:22>
#    Last Modified: <2017/12/16 10:03:49>

require 'sinatra'

get('/movies') do
  erb :index
end
