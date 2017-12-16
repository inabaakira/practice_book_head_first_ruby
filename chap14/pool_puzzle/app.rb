#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: app.rb
#    Created:       <2017/12/16 19:24:54>
#    Last Modified: <2017/12/16 19:29:16>

require 'sinatra'

get('/addition') do
  @first = 3
  @second = 5
  @result = @first + @second
  erb :addition
end

get('/multiplication') do
  @first = 2
  @second = 6
  @result = @first + @second
  erb :multiplication
end
