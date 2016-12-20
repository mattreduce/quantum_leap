module QuantumLeap
  # Internal: The main module for methods that manipulate time, and provide
  # interfaces to the custom time.
  #
  # All methods are module methods and should be called on the
  # QuantumLeap::Accelerator module.
  #
  # Examples
  #
  #   QuantumLeap::Accelerator.mock_current_time(Time.new(1956, 9, 13))
  #   # => [1788820900.589824]
  #
  #   QuantumLeap::Accelerator.time_travel_offsets
  #   # => [1788820900.589824]
  #
  #   QuantumLeap::Accelerator.now
  #   # => 1956-09-13 00:00:01 -0700
  #
  #   QuantumLeap::Accelerator.date
  #   # => #<Date: 1956-09-13 ((2435730j,0s,0n),+0s,2299161j)>
  #
  #   QuantumLeap::Accelerator.reset
  #   # => []
  module Accelerator
    extend self

    # Internal: Return or initialize the stack of time offsets as Floats.
    #
    # Examples
    #
    #   QuantumLeap::Accelerator.time_travel_offsets
    #   # => [1788820900.589824]
    #
    # Returns an empty Array or an Array of Floats.
    def time_travel_offsets
      @time_travel_offsets ||= []
    end

    # Internal: Empties the stack of time offsets, effectively resetting the
    # current time to the actual time.
    #
    # Returns an empty Array.
    def reset
      @time_travel_offsets = []
    end

    # Internal: Add to the stack of time offsets the difference between the
    # actual current time, and the desired new time.
    #
    # new_time - The past or future Time to leap to.
    #
    # Examples
    #
    #   QuantumLeap::Accelerator.mock_current_time(Time.new(1956, 9, 13))
    #   # => [1788820900.589824]
    #
    # Returns the stack of time offsets, an Array of Floats.
    def mock_current_time(new_time)
      time_travel_offsets.push(Time.now - new_time)
    end

    # Internal: Provide the mocked time by applying all offsets to the actual
    # current time.
    #
    # Examples
    #
    #   QuantumLeap::Accelerator.now
    #   # => 1956-09-13 00:00:01 -0700
    #
    # Returns the mocked current Time.
    def now
      Time.really_now - time_travel_offsets.inject(0, :+)
    end

    # Internal: Converts the current mocked Time to a Date object.
    #
    # Examples
    #
    #   QuantumLeap::Accelerator.date
    #   # => #<Date: 1956-09-13 ((2435730j,0s,0n),+0s,2299161j)>
    #
    # Returns the mocked current Date.
    def date
      now.to_date
    end
  end

end
