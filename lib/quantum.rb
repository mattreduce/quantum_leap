require 'quantum_leap'

class Quantum
  INITIAL_LEAP = Time.new(1956, 9, 13, 15, 00)

  def self.leap(time = INITIAL_LEAP)
    QuantumLeap::Accelerator.mock_current_time(time)
    if block_given?
      begin
        yield
      ensure
        QuantumLeap::Accelerator.reset
      end
    end
    return Time.now
  end

  def self.leap_back
    QuantumLeap::Accelerator.reset
    Time.now
  end
end
