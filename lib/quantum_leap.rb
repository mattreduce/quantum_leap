require 'quantum_leap/version'

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
end

class << Time
  alias_method :really_now, :now
  def now; QuantumLeap.now; end
end

class Quantum
  def self.leap(time)
    QuantumLeap.mock_current_time(time)
  end

  def self.leap_back
    QuantumLeap.reset
  end
end
