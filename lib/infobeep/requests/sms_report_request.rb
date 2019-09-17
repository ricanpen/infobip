require 'json'

module Infobip
  class SMSReportRequest < BaseRequestModel
    attribute :bulkId, String
    attribute :messageId, String
    attribute :limit, Integer

    def http_method
      :get
    end

    def route
      'sms/1/reports'
    end

    def response_class
      SMSReportResponse
    end

  end
end