class << Time
  alias_method :really_now, :now
  def now; QuantumLeap::Accelerator.now; end
end
