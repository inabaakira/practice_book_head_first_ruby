#!/usr/bin/ruby --
#-*- mode: ruby-mode; coding: utf-8 -*-
# file: prices.rb
#    Created:       <2015/05/19 20:35:00>
#    Last Modified: <2015/05/27 20:56:19>

# def total(prices)
#   amount = 0
#   index = 0
#   while index < prices.length
#     amount += prices[index]
#     index += 1
#   end
#   amount
# end

# def refund(prices)
#   amount = 0
#   index = 0
#   while index < prices.length
#     amount -= prices[index]
#     index += 1
#   end
#   amount
# end

# def show_discount(prices)
#   index = 0
#   while index < prices.length
#     amount_off = prices[index] / 3.0
#     puts format("Your discount: $%.2f", amount_off)
#     index += 1
#   end
# end

# prices = [3.99, 25.00, 8.99]
# puts format("%.2f", total(prices))
# puts format("%.2f", refund(prices))
# show_discount(prices)

# puts("")

# def do_something_with_every_item(array, operation)

#   if operation == "total" or operation == "refund"
#     amount = 0
#   end
#   index = 0
#   while index < array.length

#     if operation == "total"
#       amount += array[index]
#     elsif operation == "refund"
#       amount -= array[index]
#     elsif operation == "show discounts"
#       amount_off = array[index] / 3.0
#       puts format("Your discount: $%.2f", amount_off)
#     end

#     index += 1
#   end

#   if operation == "total" or operation == "refund"
#     return amount
#   end

# end

# prices = [3.99, 25.00, 8.99]
# puts format("%.2f", do_something_with_every_item(prices, "total"))
# puts format("%.2f", do_something_with_every_item(prices, "refund"))
# do_something_with_every_item(prices, "show discounts")


# puts('')

# def my_method(&my_block)
#   puts "We're in the method,  about to invoke your block!"
#   my_block.call
#   puts "We're back in the method!"
# end

# my_method do
#   puts "We're in the block!"
# end

def give(&my_block)
  my_block.call("2 turtle doves", "1 partridge")
end

give do |present1, present2|
  puts "My method gave to me..."
  puts present1, present2
end

