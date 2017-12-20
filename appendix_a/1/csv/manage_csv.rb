#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: manage_csv.rb
#    Created:       <2017/12/20 19:58:02>
#    Last Modified: <2017/12/20 20:10:44>

require 'csv'
CSV.foreach("sales.csv", headers: true) do |row|
  puts "#{row['Associate']}: #{row['Sales Total']}"
end
