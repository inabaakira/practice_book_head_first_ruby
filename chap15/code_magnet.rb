#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: code_magnet.rb
#    Created:       <2017/12/19 00:55:01>
#    Last Modified: <2017/12/19 01:13:58>

require 'yaml/store'

class Book
  attr_accessor :title, :pages
end

book = Book.new
book.title = "Head First Ruby"
book.pages = 450

store = YAML::Store.new('books.yml')
store.transaction do
  store["HFRB"] = book
end
