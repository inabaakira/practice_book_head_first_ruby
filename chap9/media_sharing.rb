#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: media_sharing.rb
#    Created:       <2017/10/29 13:49:49>
#    Last Modified: <2017/10/29 13:55:05>

class Clip
  attr_reader :comments

  def initialize
    @comments = []
  end

  def add_comment(comment)
    comments << comment
  end

  def play
    puts "Playing #{object_id}..."
  end
end

class Video < Clip
  attr_accessor :resolution
end

class Song < Clip
  attr_accessor :beats_per_minute
end

video = Video.new
video.add_comment("Cool slow motion effect!")
video.add_comment("Weired ending.")
song = Song.new
song.add_comment("Awesome beat.")

p video.comments, song.comments
