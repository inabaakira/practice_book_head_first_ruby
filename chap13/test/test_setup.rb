#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: test_setup.rb
#    Created:       <2017/12/12 21:05:42>
#    Last Modified: <2017/12/12 21:06:52>

require 'minitest/autorun'

class TestSetup < Minitest::Test
  def setup
    puts "In setup"
  end

  def test_one
    puts "In test_one"
  end

  def test_two
    puts "In test_two"
  end
end
