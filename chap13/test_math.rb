#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: test_math.rb
#    Created:       <2017/12/11 20:21:36>
#    Last Modified: <2017/12/11 20:23:14>

require 'minitest/autorun'

class TestMath < Minitest::Test
  def test_truth
    assert(2 + 2 == 4)
  end
  def test_fallacy
    assert(2 + 2 == 5)
  end
end
