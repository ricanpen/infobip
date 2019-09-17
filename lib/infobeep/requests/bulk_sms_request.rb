require 'json'

module Infobip
  class BulkSMSRequest < BaseRequestModel
    attribute :bulkId, String
    attribute :messages, Array[SMSRequest]

    def hash_attributes
      h = super
      h[:messages] = messages.collect{ |message| message.hash_attributes }
      h
    end

    def http_method
      :post
    end

    def route
      'sms/1/text/advanced'
    end

    def response_class
      SMSResponse
    end
  end

end