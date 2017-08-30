# Ruby, Rspec & Travis-CI

***

## Initialize Repo
Initialise repo on Github with a README.md https://github.com

> Login > Your Profile > Repositories > New

	Repository Name: ruby_travis_example
	Public: YES
	Initialise this repository with a README.md: YES

> Create Repository

Clone to your local working directory
From terminal:

> $ cd {your_working_dir}
>
> $ git clone {repo_name}

***

## Ruby project base structure

* Create a .ruby-version file
* Create the lib dir for the project files
* Create the project root file app.rb
* Create a /lib directory for where class will be stored

__Base Dir__

```
- /lib
	- main.rb
- .ruby-version
- app.rb
- README.md
```

***

## Initialise Rspec

https://github.com/rspec/rspec

* Create Gemfile with rspec spec
* Generate your gemfile.lock $ gem install bundle && bundle install
* Initialise Rspec $ rspec --init

__Add to project root__

```
- /spec
- .rspec
- Gemfile
- Gemfile.lock
```
***

## Write a test and corresponding code

I’ve just written some sample code to retrieve a user input and return their name, for the sake of demonstration and to ensure the tests build correctly.

http://www.betterspecs.org/
https://www.anchor.com.au/wp-content/uploads/rspec_cheatsheet_attributed.pdf

__app__
```
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
```

__spec/main_spec__
```
require 'rspec'
require 'spec_helper'
require './lib/main'

describe Main do
  describe '#interpret' do
    it 'should return the command which is a String' do
      instance = Main.new
      command = 'Selena'

      expect(instance.interpret(command)).to be_a String
      expect(instance.interpret(command)).to eq 'Selena'
    end
  end
end
```

__lib/main__
```
# Main class
class Main
  # Interpret method
  # @param name [String]
  # @return name
  def interpret(name)
    $stdout.print "Hello #{name.capitalize}. \n"

    name
  end
end
```

***
