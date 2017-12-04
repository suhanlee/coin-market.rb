module Coin
  module Market
    module Exceptions
      class NetworkException < RuntimeError
      end

      class CannotSupportException < RuntimeError
        
      end
    end
  end
end