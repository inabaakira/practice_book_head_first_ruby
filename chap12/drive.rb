#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: drive.rb
#    Created:       <2017/12/03 09:41:10>
#    Last Modified: <2017/12/03 09:53:23>


def drive(destination)
  if destination == "Hawaii"
    raise "You can't drive to Hawaii"
  end
end

begin
  drive("Hawaii")
rescue => error
  puts error.message
end
