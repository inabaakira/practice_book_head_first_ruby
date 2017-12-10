#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: test_something.rb
#    Created:       <2017/12/10 13:48:43>
#    Last Modified: <2017/12/10 13:49:46>

require 'minitest/autorun'

class TestSomething < Minitest::Test
  def test_true_assertion
    assert(true)
  end

  def test_false_assertion
    assert(false)
  end
end
