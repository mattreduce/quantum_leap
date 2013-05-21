require 'quantum_leap'

module QuantumLeap
  module Accelerator
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

end
