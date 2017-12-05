#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: test_score.rb
#    Created:       <2017/12/05 23:34:27>
#    Last Modified: <2017/12/05 23:38:32>

class TestScoreError < StandardError
end

score = 52
begin
  if score > 60
    puts "passing grade"
  else
    raise TestScoreError, "failing grade"
  end
rescue TestScoreError => error
  puts "Received #{error.message}. Taking make-up exam..."
  score = 63
  retry
end
