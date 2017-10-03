#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: pig_latin.rb
#    Created:       <2017/09/24 14:12:19>
#    Last Modified: <2017/09/24 14:29:20>

def pig_latin(words)

  original_length = 0
  new_length = 0

  words.each do |word|
    puts "Original word: #{word}"
    original_length += word.length
    letters = word.chars
    first_letter = letters.shift
    new_word = "#{letters.join}#{first_letter}ay"
    puts "Pig Latin word: #{new_word}"
    new_length += new_word.length
  end

  puts "Total original length: #{original_length}"
  puts "Total Pig Latin length: #{new_length}"
  
end

my_words = ["blocks", "totally", "rock"]
pig_latin(my_words)
