#!/usr/bin/ruby2.0 --
#-*- mode: ruby-mode; coding: utf-8 -*-
# file: 2015-03-04-180239.rb
#    Created:       <2015/03/04 18:02:41>
#    Last Modified: <2015/03/05 16:50:19>

# Get My Number Game

puts "Welcome to 'Get My Number!'"

# Get the player's name, and greet them.
print "What's your name? "
input = gets
name = input.chomp
puts "Welcome,  #{name}!"

# puts input.inspect
# p input

# Store a randowm number for the player to guess.
puts "I've got a randowm number between 1 and 100."
puts "Can you guess it?"
target = rand(100) + 1

# Track how many guesses the player has made.
num_guesses = 0

# Track whether the player has guessed correctly
guessed_it = false

until num_guesses == 10 || guessed_it

  puts "You've got #{10 - num_guesses} guesses left"
  print "Make a guess: "
  guess = gets.to_i

  num_guesses += 1

  # Compare the guess to the target
  # Print the appropriate message.
  if guess < target
    puts "Oops. Your guess was LOW."
  elsif guess > target
    puts "Oops. Your guess was HIGH."
  elsif guess == target
    puts "Good job, #{name}!"
    puts "You guessed my number in #{num_guesses} guesses!"
    guessed_it = true
  end

end

# If player ran out of turns, tell them what the number was.
unless guessed_it
  puts "Sorry. You didn't get my number. (It was #{target}.)"
end
