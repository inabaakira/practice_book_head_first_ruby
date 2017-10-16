#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: love_interest.rb
#    Created:       <2017/10/16 15:58:05>
#    Last Modified: <2017/10/16 16:13:04>

class LoveInterest
  def request_date
    if @busy
      puts "Sorry, I'm busy"
    else
      puts "Sure, let's go!"
      @busy = true
    end
  end
end

# betty = LoveInterest.new
# candace = LoveInterest.new

# betty.request_date
# candace.request_date

# p betty.object_id
# p candace.object_id

betty = LoveInterest.new
candace = betty

p betty.object_id
p candace.object_id

betty.request_date
candace.request_date
