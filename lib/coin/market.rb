require 'coin/market/version'
require 'coin/market/exceptions'
require 'rest-client'
require 'json'

module Coin
  module Market
    BTC_KRW = "btc_krw"
    ETH_KRW = "eth_krw"
    ETC_KRW = "etc_krw"
    XRP_KRW = "xrp_krw"
    BCH_KRW = "bch_krw"

    SUPPORT_CURRENCY = [BTC_KRW, ETH_KRW, ETC_KRW, XRP_KRW, BCH_KRW]
    
    class Korbit
      GET_TICKER = "https://api.korbit.co.kr/v1/ticker"
      GET_TICKER_DETAILED = "https://api.korbit.co.kr/v1/ticker/detailed"

      def self.create_method(currency)
        define_method "get_ticker_#{currency}" do
          get_ticker(currency)
        end

        define_method "get_ticker_detailed_#{currency}" do
          get_ticker_detailed(currency)
        end
      end

      create_method(BTC_KRW)
      create_method(ETH_KRW)
      create_method(ETC_KRW)
      create_method(XRP_KRW)
      create_method(BCH_KRW)
      

      def get_ticker_detailed(currency_pair)
        unless is_supported_ticker(currency_pair)
          raise Exceptions::CannotSupportException, __method__ + currency_pair
        end

        ticker = _process_api(get_ticker_detailed_with_currency_pair(currency_pair))

        if ticker.nil?
          raise Exceptions::NetworkException, __method__ + currency_pair
        end
        ticker
      end

      def _process_api(url)
        http_response = RestClient.get(url)
        JSON.parse(http_response.body)
      end

      def get_ticker(currency_pair)
        unless is_supported_ticker(currency_pair)
          raise Exceptions::CannotSupportException, __method__ + currency_pair
        end

        ticker = _process_api(get_ticker_with_currency_pair(currency_pair))

        if ticker.nil?
          raise Exceptions::NetworkException, __method__ + currency_pair
        end
        ticker
      end

      private

      def get_ticker_with_currency_pair(currency_pair)
        GET_TICKER + "?=currency_pair=" + currency_pair
      end

      def get_ticker_detailed_with_currency_pair(currency_pair)
        GET_TICKER_DETAILED + "?=currency_pair=" + currency_pair
      end
      
      def is_supported_ticker(currency_pair)
        SUPPORT_CURRENCY.include?(currency_pair)
      end

    end
  end
end
