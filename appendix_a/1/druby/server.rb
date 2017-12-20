#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: server.rb
#    Created:       <2017/12/20 19:45:22>
#    Last Modified: <2017/12/20 19:46:37>

require 'drb/drb'

my_object = []
DRb.start_service("druby://localhost:8787", my_object)
20.times do
  sleep 10
  p my_object
end
DRb.thread.join
