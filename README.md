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

https://apidocs.korbit.co.kr/

```ruby
require 'coin-market'

# ticker
korbit = Coin::Market::Korbit.new
response = korbit.get_ticker_btc_krw
=> {"timestamp"=>1512415955593, "last"=>"13357500"}

response = korbit.get_ticker_bch_krw
=> {"timestamp"=>1512415826306, "last"=>"1777000"}

response = korbit.get_ticker_eth_krw
=> {"timestamp"=>1512415997850, "last"=>"33940"}

response = korbit.get_ticker_xrp_krw
=> {"timestamp"=>1512415720622, "last"=>"286"}


# ticker detail
korbit.get_ticker_detailed_btc_krw
=> {"timestamp"=>1512419385635,
 "last"=>"13410000",
 "bid"=>"13410000",
 "ask"=>"13410500",
 "low"=>"12833000",
 "high"=>"13500000",
 "volume"=>"4690.751945329017480177",
 "change"=>"43500",
 "changePercent"=>"0.33"}

korbit.get_ticker_detailed_eth_krw
=> {"timestamp"=>1512418570222,
 "last"=>"542900",
 "bid"=>"542450",
 "ask"=>"542950",
 "low"=>"532400",
 "high"=>"549800",
 "volume"=>"23443.919674902796768231",
 "change"=>"-50",
 "changePercent"=>"-0.01"}


```

### Coinone
### Bithumb
### Coinnest
### Upbit

## Development

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/suhanlee/coin-market.rb.

