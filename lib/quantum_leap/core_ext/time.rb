class << Time
  alias_method :really_now, :now
  def now; QuantumLeap.now; end
end
