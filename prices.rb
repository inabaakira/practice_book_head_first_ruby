#!/usr/bin/ruby --
#-*- mode: ruby-mode; coding: utf-8 -*-
# file: prices.rb
#    Created:       <2015/05/19 20:35:00>
#    Last Modified: <2015/05/19 20:45:46>

def total(prices)
  amount = 0
  index = 0
  while index < prices.length
    amount += prices[index]
    index += 1
  end
  amount
end

prices = [3.99, 25.00, 8.99]
puts format("%.2f", total(prices))

def refund(prices)
  amount = 0
  index = 0
  while index < prices.length
    amount -= prices[index]
    index += 1
  end
  amount
end

puts format("%.2f", refund(prices))

def show_discount(prices)
  index = 0
  while index < prices.length
    amount_off = prices[index] / 3.0
    puts format("Your discount: $%.2f", amount_off)
    index += 1
  end
end

show_discount(prices)
