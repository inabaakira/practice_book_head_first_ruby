#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: app.rb
#    Created:       <2017/12/17 15:13:07>
#    Last Modified: <2017/12/17 16:30:14>

require 'sinatra'

get('/form') do
  erb :form
end

post('/convert') do
  fahrenheit = params['temperature'].to_f
  celsius = (fahrenheit - 32) / 1.8
  format("%0.1f degrees Fahrenheit is %0.1f degrees Celsius.", fahrenheit, celsius)
end
