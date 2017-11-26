#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-

# this class allows you to perform various operations
# on the words in a string.
class WordSplitter

  include Enumerable

  # The string to split into words.
  attr_accessor :string

  # Passes each word in the string to a block, one
  # at a time.
  def each
    string.split(" ").each do |word|
      yield word
    end
  end
end
