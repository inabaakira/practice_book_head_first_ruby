#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: client.rb
#    Created:       <2017/12/20 19:47:08>
#    Last Modified: <2017/12/20 19:48:20>

require 'drb/drb'
DRb.start_service
remote_object = DRbObject.new_with_uri("druby://localhost:8787")
remote_object.push "hello", "network"
p remote_object.last
