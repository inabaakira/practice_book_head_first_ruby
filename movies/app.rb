#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: app.rb
#    Created:       <2017/12/14 20:51:22>
#    Last Modified: <2017/12/16 13:30:44>

require 'sinatra'
require 'movie'

get('/movies') do
  @movie = Movie.new
  @movie.title = "Jaws"
  erb :index
end
