require 'quantum_leap'

# Public: Quantum is the public-facing interface to the library.
#
# Examples
#
#   Quantum.leap(Time.new(1956, 9, 13))
#   # => 1956-09-13 00:00:00 -0700
#
#   Quantum.leap_back
#   # => 2013-05-20 21:55:54 -0700
#
#   Quantum.leap(Time.new(1974, 10, 24)) do
#     puts Time.now
#   end
class Quantum
  # Public: Change the current time to a specific point in the past or future.
  # You can change the time temporarily by specifying a block; time is
  # unchanged outside the context of the block.
  #
  # time - The Time to leap to (default: 1956-09-13 00:00:00).
  #
  # Examples
  #
  #   Quantum.leap(Time.new(1956, 9, 13))
  #   # => 1956-09-13 00:00:00 -0700
  #
  #   Quantum.leap(Time.new(1974, 10, 24)) do
  #     puts Time.now
  #   end
  #
  # Returns the current time.
  def self.leap(time = QuantumLeap::INITIAL_LEAP)
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

  # Public: Return to the present time.
  #
  # Returns the current time.
  def self.leap_back
    QuantumLeap::Accelerator.reset
    Time.now
  end
end
