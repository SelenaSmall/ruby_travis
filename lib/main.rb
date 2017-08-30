# Main class
class Main
  # Interpret method
  # @param name [String]
  # @return name
  def interpret(name)
    $stdout.print "Hello #{name.capitalize}. \n Type 'EXIT' to quit! \n"

    name
  end
end
