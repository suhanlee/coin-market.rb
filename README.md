# coin-market.rb - simple Library for accessing Coin Market API


A simple Library for accessing Coin Market API

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'coin-market'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install coin-market

## Usage

### Korbit
```ruby
require 'coin-market'

korbit = Coin::Market::Korbit.new
response = korbit.get_ticker_btc_krw
=> {"timestamp"=>1512415955593, "last"=>"13357500"}

response = korbit.get_ticker_bch_krw
=> {"timestamp"=>1512415826306, "last"=>"1777000"}

response = korbit.get_ticker_eth_krw
=> {"timestamp"=>1512415997850, "last"=>"33940"}

response = korbit.get_ticker_xrp_krw
=> {"timestamp"=>1512415720622, "last"=>"286"}

```

### Coinone
### Bithumb
### Coinnest
### Upbit

## Development

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/suhanlee/coin-market.rb.

