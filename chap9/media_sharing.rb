#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: media_sharing.rb
#    Created:       <2017/10/29 13:49:49>
#    Last Modified: <2017/11/04 20:04:44>

module AcceptsComments
  def commants
    if @comments
      @comments
    else
      @comments = []
    end
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
