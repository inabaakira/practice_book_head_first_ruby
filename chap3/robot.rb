#!/usr/bin/env ruby
# mode: enh-ruby-mode
# file: robot.rb
#    Created:       <2017/03/09 15:28:19>
#    Last Modified: <2017/03/09 18:20:44>

class Robot
  attr_accessor :name

  def activate
    puts "#{@name} is powering up"
  end

  def mode(destination)
    puts "#{name} walks to #{destination}"
  end

end

class TankBot < Robot

  attr_accessor :weapon

  def attack
    puts "#{name} fires #{weapon}"
  end

  def move(destination)
    puts "#{name} deploys solar panel"
    super
  end

end
