#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: word_splitter.rb
#    Created:       <2017/11/15 20:28:47>
#    Last Modified: <2017/11/15 20:38:58>

class WordSplitter
  attr_accessor :string

  def each
    string.split(" ").each do |word|
      yield word
    end
  end
end

splitter = WordSplitter.new
splitter.string = "one two three four"

splitter.each do |word|
  puts word
end
