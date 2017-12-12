#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: list_with_commas.rb
#    Created:       <2017/12/08 20:18:45>
#    Last Modified: <2017/12/12 20:29:38>

class ListWithCommas
  attr_accessor :items
  def join
    if items.length == 2
      return "#{items[0]} and #{items[1]}"
    end
    last_item = "and #{items.last}"
    other_items = items.slice(0, items.length - 1).join(', ')
    "#{other_items}, #{last_item}"
  end
end

one_subject = ListWithCommas.new
one_subject.items = ['a rodeo clown']
puts "A photo of #{one_subject.join}"

two_subjects = ListWithCommas.new
two_subjects.items = ['my parent', 'a rodeo clown']
puts "A photo of #{two_subjects.join}"

three_subjects = ListWithCommas.new
three_subjects.items = ['my parent', 'a rodeo clown', 'a prize bull']
puts "A photo of #{three_subjects.join}"
