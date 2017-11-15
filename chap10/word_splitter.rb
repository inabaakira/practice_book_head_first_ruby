#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: word_splitter.rb
#    Created:       <2017/11/15 20:28:47>
#    Last Modified: <2017/11/15 20:52:45>

class WordSplitter
  include Enumerable

  attr_accessor :string

  def each
    string.split(" ").each do |word|
      yield word
    end
  end
end

splitter = WordSplitter.new
splitter.string = "how do you do"

p splitter.find_all { |word| word.include?("d") }
p splitter.reject { |word| word.include?("d") }
p splitter.map { |word| word.reverse }

p splitter.any? { |word| word.include?("e") }
p splitter.count
p splitter.first
p splitter.sort
