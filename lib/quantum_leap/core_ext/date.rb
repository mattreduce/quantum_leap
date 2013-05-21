require 'date'

class << Date
  alias_method :really_today, :today
  def today; QuantumLeap.date; end
end
