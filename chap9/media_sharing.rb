#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: media_sharing.rb
#    Created:       <2017/10/29 13:49:49>
#    Last Modified: <2017/11/05 16:01:24>

module AcceptsComments
  attr_reader :comments

  def initialize
    puts "In initialize from AcceptsComments"
    @comments = []
  end

  def add_comment(comment)
    comments << comment
  end
end

class Clip
  def play
    puts "Playing #{object_id}..."
  end
end

class Video < Clip
  include AcceptsComments
  attr_accessor :resolution
end

class Song < Clip
  include AcceptsComments
  attr_accessor :beats_per_minute
end

class Photo
  include AcceptsComments
  def initialize
    puts "In initialize from Photo"
    @format = 'JPEG'
  end
  def show
    puts "Displaying #{object_id}..."
  end
end

photo = Photo.new
photo.add_comment("Beautiful colors.")

p photo.comments
