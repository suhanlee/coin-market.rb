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

# orderbook
korbit.get_orderbook_btc_krw
=> {"timestamp"=>1512420519036,
 "bids"=>
  [["13446500", "0.37482849", "1"],
   ["13446000", "0.00167337", "1"],
   ["13439500", "0.02678672", "1"],
   ["13439000", "2.54171968", "1"],
   ["13438000", "0.00167436", "1"],
   ["13437500", "0.00167442", "1"],
   ["13436000", "0.00167461", "1"],
 "asks"=>
  [["13452000", "1.1448576", "1"],
   ["13453000", "0.61177253", "1"],
   ["13453500", "0.012", "1"],
   ["13455000", "2.39762373", "1"],
   ["13456000", "0.86662262", "1"],
   ["13500000", "103.77050183", "1"]]}


# transactions
korbit.get_transactions_btc_krw
=> [{"timestamp"=>1512421657884, "tid"=>"3625525", "price"=>"13452000", "amount"=>"0.2766"},
 {"timestamp"=>1512421646922, "tid"=>"3625524", "price"=>"13452000", "amount"=>"0.117910928534759084"},
 {"timestamp"=>1512421646778, "tid"=>"3625523", "price"=>"13452000", "amount"=>"0.532089071465240916"},
 {"timestamp"=>1512421635783, "tid"=>"3625522", "price"=>"13452000", "amount"=>"0.149"},
 {"timestamp"=>1512421600472, "tid"=>"3625521", "price"=>"13452000", "amount"=>"0.090656038534759084"},
 {"timestamp"=>1512421600350, "tid"=>"3625520", "price"=>"13451500", "amount"=>"0.038343961465240916"},
 {"timestamp"=>1512421587120, "tid"=>"3625519", "price"=>"13451500", "amount"=>"0.088465970337880534"},
 {"timestamp"=>1512421586840, "tid"=>"3625518", "price"=>"13450000", "amount"=>"0.005"},
 {"timestamp"=>1512421586711, "tid"=>"3625517", "price"=>"13450000", "amount"=>"0.251872720315241636"},
 {"timestamp"=>1512421575845, "tid"=>"3625516", "price"=>"13450000", "amount"=>"0.756"},
 {"timestamp"=>1512421568508, "tid"=>"3625515", "price"=>"13450000", "amount"=>"0.0218"},
 {"timestamp"=>1512421561156, "tid"=>"3625514", "price"=>"13450000", "amount"=>"1.149"},
 {"timestamp"=>1512421545846, "tid"=>"3625513", "price"=>"13450000", "amount"=>"1.0583"},


# constants
korbit.get_constants_btc_krw
=> {"minKrwWithdrawal"=>1000,
 "maxKrwWithdrawal"=>5000000000,
 "krwWithdrawalFee"=>1000,
 "btcWithdrawalFee"=>0.001,
 "minBtcWithdrawal"=>0.0001,
 "maxBtcWithdrawal"=>5,
 "minBtcOrder"=>0.001,
 "maxBtcOrder"=>100,
 "minBtcPrice"=>1000,
 "maxBtcPrice"=>100000000,
 "minTradableLevel"=>2,
 "btcTickSize"=>500,
 "minEthOrder"=>0.01,
 "maxEthOrder"=>1000,
 "minEthPrice"=>1000,
 "maxEthPrice"=>100000000,
 "ethTickSize"=>50,
 "minEtcOrder"=>0.1,
 "maxEtcOrder"=>20000,
 "minEtcPrice"=>100,
 "maxEtcPrice"=>100000000,
 "etcTickSize"=>10}


```

### Coinone
### Bithumb
### Coinnest
### Upbit

## Development

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/suhanlee/coin-market.rb.

