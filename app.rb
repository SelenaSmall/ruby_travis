#!/usr/bin/ruby

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
