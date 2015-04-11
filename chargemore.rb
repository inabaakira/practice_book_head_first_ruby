#!/usr/bin/ruby2.0 --
#-*- mode: ruby-mode; coding: utf-8 -*-
# file: employee.rb
#    Created:       <2015/03/23 20:24:23>
#    Last Modified: <2015/03/25 20:33:51>

class Employee

  attr_reader :name, :salary

  def name=(name)
    if name == ""
      raise "Name can't be blank!"
    end
    @name = name
  end

  def salary=(salary)
    if salary < 0
      raise "A salary of #{salary} isn't valid!"
    end
    @salary = salary
  end

  def initialize(name = "Anonymous", salary = 0.0)
    @name = name
    @salary = salary
  end

  def print_pay_stub
    puts "Name: #{@name}"
    pay_for_period = (@salary / 365.0) * 14
    formatted_pay = format("%.2f", pay_for_period)
    puts "Pay This Period: $#{formatted_pay}"
  end

  # def print_pay_stub
  #   p @name, @salary
  # end
end

class MyClass
  def initialize(my_param)
    puts "Got a parameter from 'new': #{my_param}"
  end
end

