#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: app.rb
#    Created:       <2017/12/14 20:51:22>
#    Last Modified: <2017/12/17 16:23:36>

require 'sinatra'
require 'movie'

get('/movies') do
  @movie = Movie.new
  @movie.title = "Jaws"
  erb :index
end

get ('/movies/new') do
  erb :new
end

post ('/movies/create') do
  @movie = Movie.new
  @movie.title = params['title']
  @movie.director = params['director']
  @movie.year = params['year']
end
