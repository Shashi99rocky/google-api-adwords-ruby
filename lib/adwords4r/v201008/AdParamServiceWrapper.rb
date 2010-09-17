# This file was automatically generated during the "rake generate" step of
# library setup.
require 'adwords4r/v201008/AdParamServiceDriver.rb'

module AdWords
  module V201008
    module AdParamService

      # Wrapper class for the v201008 AdParam service.
      # This class is automatically generated.
      class AdParamServiceWrapper

        # Holds the AdWords::API object to which the wrapper belongs.
        attr_reader :api

        # Holds a shortcut to the parent module.
        # Use this to avoid typing the full class name when creating classes
        # belonging to this service, e.g.
        #  service_object.module::ClassName
        # instead of
        #  AdWords::V201008::AdParamService::ClassName
        # This will make it easier to migrate your code between API versions.
        attr_reader :module

        public

        # Constructor for AdParamServiceWrapper.
        #
        # Args:
        # - driver: SOAP::RPC::Driver object with the remote SOAP methods for
        #   this service
        # - api: the AdWords::API object to which the wrapper belongs
        #
        def initialize(driver, api)
          @driver = driver
          @api = api
          @module = AdWords::V201008::AdParamService
        end

        # Calls the {get}[http://code.google.com/apis/adwords/v2009/docs/reference/AdParamService.html#get] method of the AdParam service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/v2009/docs/reference/AdParamService.html#get].
        #
        # Args:
        # - selector: AdWords::V201008::AdParamService::AdParamSelector
        #
        # Returns:
        # - rval: AdWords::V201008::AdParamService::AdParamPage
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def get(selector)
          begin
            AdWords::Service.validate_param('selector',
                selector, AdWords::V201008::AdParamService::AdParamSelector)
            # Construct request object and make API call
            obj = AdWords::V201008::AdParamService::Get.new(selector)
            return @driver.get(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "get Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

        # Calls the {mutate}[http://code.google.com/apis/adwords/v2009/docs/reference/AdParamService.html#mutate] method of the AdParam service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/v2009/docs/reference/AdParamService.html#mutate].
        #
        # Args:
        # - operations: SOAP::SOAPArray of AdWords::V201008::AdParamService::AdParamOperation
        #
        # Returns:
        # - rval: SOAP::SOAPArray of AdWords::V201008::AdParamService::AdParam
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def mutate(operations)
          begin
            AdWords::Service.validate_param('operations',
                operations, SOAP::SOAPArray)
            # Construct request object and make API call
            obj = AdWords::V201008::AdParamService::Mutate.new(operations)
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
