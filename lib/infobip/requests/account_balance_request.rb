require 'json'

module Infobip
  class AccountBalanceRequest < BaseRequestModel

    def http_method
      :get
    end

    def route
      'account/1/balance'
    end

    def response_class
      AccountBalance
    end
  end
end