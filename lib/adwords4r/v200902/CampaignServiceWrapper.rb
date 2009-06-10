# This file was automatically generated during the "rake generate" step of the
# library setup.
require 'adwords4r/v200902/CampaignServiceDriver.rb'

module AdWords
  module V200902
    module CampaignService

      # Wrapper class for the v200902 Campaign service.
      # This class is automatically generated.
      class CampaignServiceWrapper

        # Holds the AdWords::API object to which the wrapper belongs
        attr_reader :api

        public

        # Constructor for CampaignServiceWrapper.
        #
        # Args:
        # - driver: SOAP::RPC::Driver object with the remote SOAP methods for
        #   this service
        # - api: the AdWords::API object to which the wrapper belongs
        #
        def initialize(driver, api)
          @driver = driver
          @api = api
        end

        # Calls the {get}[http://code.google.com/apis/adwords/v2009/docs/reference/CampaignService.html#get] method of the Campaign service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/v2009/docs/reference/CampaignService.html#get].
        #
        # Args:
        # - selector: AdWords::V200902::CampaignService::CampaignSelector
        #
        # Returns:
        # - rval: AdWords::V200902::CampaignService::CampaignPage
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def get(selector)
          begin
            AdWords::Service.validate_param('selector',
                selector, AdWords::V200902::CampaignService::CampaignSelector)
            # Construct request object and make API call
            obj = AdWords::V200902::CampaignService::Get.new(selector)
            return @driver.get(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "get Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

        # Calls the {mutate}[http://code.google.com/apis/adwords/v2009/docs/reference/CampaignService.html#mutate] method of the Campaign service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/v2009/docs/reference/CampaignService.html#mutate].
        #
        # Args:
        # - operations: SOAP::SOAPArray of AdWords::V200902::CampaignService::CampaignOperation
        #
        # Returns:
        # - rval: AdWords::V200902::CampaignService::CampaignReturnValue
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def mutate(operations)
          begin
            AdWords::Service.validate_param('operations',
                operations, SOAP::SOAPArray)
            # Construct request object and make API call
            obj = AdWords::V200902::CampaignService::Mutate.new(operations)
            return @driver.mutate(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "mutate Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

      end
    end
  end
end
