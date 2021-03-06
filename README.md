# QuantumLeap

[![Build Status](https://travis-ci.org/mattreduce/quantum_leap.svg?branch=master)](https://travis-ci.org/mattreduce/quantum_leap)
[![Code Climate](https://codeclimate.com/github/mattreduce/quantum_leap/badges/gpa.svg)](https://codeclimate.com/github/mattreduce/quantum_leap)

Righting wrongs in your test suite with time travel!

QuantumLeap lets you change the current time in your tests.

I can't promise you'll meet any historical figures, however.

## Installation

Add this line to your application's Gemfile:

    gem 'quantum_leap'

Or install it yourself as:

    $ gem install quantum_leap

## Usage

```ruby
Quantum.leap(Time.new(1956, 9, 13))
sam.must_be_kind_of(Pilot)
sam.must_win_baseball_game
Quantum.leap_back
```

Or with a block:

```ruby
Quantum.leap(Time.new(1974, 10, 24)) do
  sam.must_be_kind_of(Boxer)
  sam.must_win_the_championship
end
```
