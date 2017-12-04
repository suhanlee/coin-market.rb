require 'coin/market/version'
require 'coin/market/exceptions'
require 'rest-client'
require 'json'

module Coin
  module Market
    BTC_KRW = "btc_krw"
    ETC_KRW = "etc_krw"
    XRP_KRW = "xrp_krw"
    BCH_KRW = "bch_krw"
    
    class Korbit
      GET_TICKER = "https://api.korbit.co.kr/v1/ticker"

      def get_ticker_btc_krw()
        get_ticker(BTC_KRW)
      end

      def get_ticker_eth_krw()
        get_ticker(ETC_KRW)
      end

      def get_ticker_xrp_krw()
        get_ticker(XRP_KRW)
      end

      def get_ticker_bch_krw()
        get_ticker(BCH_KRW)
      end
      
      def get_ticker(currency_pair)
        unless is_supported_ticker(currency_pair)
          raise Exceptions::CannotSupportException, 'get_ticker_' + currency_pair
        end
        http_response = RestClient.get(make_currency_pair(currency_pair))
        ticker = JSON.parse(http_response.body)
        if ticker.nil?
          raise Exceptions::NetworkException, 'get_ticker_' + currency_pair
        end
        ticker
      end

      def make_currency_pair(currency_pair)
        GET_TICKER + "?=currency_pair=" + currency_pair
      end

      def is_supported_ticker(currency_pair)
        currency_pair == BTC_KRW || currency_pair == ETC_KRW || currency_pair == XRP_KRW || currency_pair == BCH_KRW
      end

    end
  end
end
