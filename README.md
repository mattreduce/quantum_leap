# QuantumLeap

Righting wrongs in your test suite with time travel!

QuantumLeap lets you change the current time in your tests.

I can't promise you'll meet any historical figures, however.

## Installation

Add this line to your application's Gemfile:

    gem 'quantum_leap'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install quantum_leap

## Usage

    require 'quantum_leap'

    Quantum.leap(Time.now + 60)
    Quantum.leap_back

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
