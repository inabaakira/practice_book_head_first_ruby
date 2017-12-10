#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: test_person.rb
#    Created:       <2017/12/10 19:55:10>
#    Last Modified: <2017/12/10 19:56:34>

require 'minitest/autorun'
require 'person'

class TestPerson < Minitest::Test
  def test_introduction
    person = Person.new
    person.name = 'Bob'
    assert(person.introduction == 'Hello, my name is Bob!')
  end
end
