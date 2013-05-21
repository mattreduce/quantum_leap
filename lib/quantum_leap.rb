require 'quantum_leap/version'

require 'quantum_leap/core_ext/date'
require 'quantum_leap/core_ext/time'

module QuantumLeap
  extend self

  def time_travel_offsets
    @time_travel_offsets ||= []
  end

  def reset
    @time_travel_offsets = []
  end

  def mock_current_time(new_time)
    time_travel_offsets.push(Time.now - new_time)
  end

  def now
    Time.really_now - time_travel_offsets.inject(0, :+)
  end

  def date
    now.to_date
  end
end

class Quantum
  INITIAL_LEAP = Time.new(1956, 9, 13, 15, 00)

  def self.leap(time = INITIAL_LEAP)
    QuantumLeap.mock_current_time(time)
    if block_given?
      begin
        yield
      ensure
        QuantumLeap.reset
      end
    end
    return Time.now
  end

  def self.leap_back
    QuantumLeap.reset
    Time.now
  end
end
