# Sample spec to get started. Remove this file when you start building your project

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
