require_relative 'spec_helper'
require 'quantum_leap'

describe Quantum do

  after do
    Quantum.leap_back
  end

  describe '.leap' do
    describe 'without a block' do
      the_present = Time.new
      the_past    = Time.new(1956, 9, 13, 15, 00)

      it 'changes the current time' do
        Quantum.leap(the_past)
        Time.now.must_be_close_to(the_past)
      end
    end

    describe 'with a block' do
      the_present = Time.new
      the_past    = Time.new(1974, 10, 24, 15, 00)

      it 'changes time only within the block' do
        Quantum.leap(the_past) do
          Time.now.must_be_close_to(the_past)
        end
        Time.now.must_be_within_delta(the_present, 1)
      end
    end
  end

  describe '.leap_back' do
    the_present = Time.new
    the_past    = Time.new(1972, 6, 15, 15, 00)

    it 'returns to the present time' do
      Quantum.leap(the_past)
      Time.now.must_be_within_delta(the_past, 1)
      Quantum.leap_back
      Time.now.must_be_within_delta(the_present, 1)
    end
  end

end
