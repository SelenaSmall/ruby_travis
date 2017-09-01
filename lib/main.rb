# Main class - sample class to get started. Remove this file when you start building your project
class Main
  # Interpret method
  # @param name [String]
  # @return name
  def interpret(name)
    $stdout.print "Hello #{name.capitalize}. \n Type 'EXIT' to quit! \n"

    name
  end
end
