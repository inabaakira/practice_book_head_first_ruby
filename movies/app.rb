#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: app.rb
#    Created:       <2017/12/14 20:51:22>
#    Last Modified: <2017/12/19 12:11:48>

require 'sinatra'
require 'movie'
require 'movie_store'

store = MovieStore.new('movies.yml')

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
  store.save(@movie)
  redirect '/movies/new'
end
