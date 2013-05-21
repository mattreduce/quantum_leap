require 'quantum_leap/version'

require 'quantum_leap/core_ext/date'
require 'quantum_leap/core_ext/time'

module QuantumLeap
  # Internal: Default time to replace the real current time with.
  INITIAL_LEAP = Time.new(1956, 9, 13, 15, 00)
end

require 'quantum_leap/accelerator'
require 'quantum'
