require_relative 'spec_helper'
require 'quantum_leap'

describe Quantum do

  describe '.leap' do
    the_past = Time.new(1956, 9, 13, 15, 00)

    it 'changes the current time' do
      Quantum.leap(the_past)
      Time.now.must_be_close_to(the_past)
    end
  end

end
