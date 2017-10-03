#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: prices.rb
#    Created:       <2017/09/07 22:27:23>
#    Last Modified: <2017/09/24 13:52:58>

def do_something_with_every_item(array, operation)
  if operation == "total" or operation == "refund"
    amount = 0
  end
  index = 0
  while index < array.length
    if operation == "total"
      amount += array[index]
    elsif operation == "refund"
      amount -= array[index]
    elsif operation == "show discounts"
      amount_off = array[index] / 3.0
      puts format("Your discount: $%.2f", amount_off)
    end

    index += 1
  end

  if operation == "total" or operation == "refund"
    return amount
  end
end

prices = [3.99, 25.00, 8.99]

puts format("%.2f", do_something_with_every_item(prices, "total"))
puts format("%.2f", do_something_with_every_item(prices, "refund"))
do_something_with_every_item(prices, "show discounts")
