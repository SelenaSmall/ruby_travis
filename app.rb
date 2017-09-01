#!/usr/bin/ruby

# Entry point for your app - Modify this file to reflect your app

require_relative './lib/main'

command = Main.new

$stdout.print "What's your name? \n"

# Reading user input
loop do
  input = gets.chomp

  next if input.empty?

  unless 'EXIT'.match?(input)
    command.interpret(input)
    next
  end

  $stdout.print "Goodbye! \n"
  break
end
