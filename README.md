# QuantumLeap

[![Build Status](https://secure.travis-ci.org/mattonrails/quantum_leap.png?branch=master)](http://travis-ci.org/mattonrails/quantum_leap)
[![Code Climate](https://codeclimate.com/github/mattonrails/quantum_leap.png)](https://codeclimate.com/github/mattonrails/quantum_leap)

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
