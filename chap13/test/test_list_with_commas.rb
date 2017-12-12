#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: test_list_with_commas.rb
#    Created:       <2017/12/12 19:55:41>
#    Last Modified: <2017/12/12 21:23:59>

require 'minitest/autorun'
require 'list_with_commas'

class TestListWithCommas < Minitest::Test
  def setup
    @list = ListWithCommas.new
  end
  def test_it_prints_one_word_aline
    @list.items = ['apple']
    assert_equal('apple', @list.join)
  end

  def test_it_joins_two_words_with_and
    @list.items = ['apple', 'orange']
    assert_equal('apple and orange', @list.join)
  end

  def test_it_joins_three_words_with_commas
    @list.items = ['apple', 'orange', 'pear']
    assert_equal('apple, orange, and pear', @list.join)
  end
end
