# This file was automatically generated during the "rake generate" step of
# library setup.
require 'adwords4r/v201008/AlertServiceDriver.rb'

module AdWords
  module V201008
    module AlertService

      # Wrapper class for the v201008 Alert service.
      # This class is automatically generated.
      class AlertServiceWrapper

        # Holds the AdWords::API object to which the wrapper belongs.
        attr_reader :api

        # Holds a shortcut to the parent module.
        # Use this to avoid typing the full class name when creating classes
        # belonging to this service, e.g.
        #  service_object.module::ClassName
        # instead of
        #  AdWords::V201008::AlertService::ClassName
        # This will make it easier to migrate your code between API versions.
        attr_reader :module

        public

        # Constructor for AlertServiceWrapper.
        #
        # Args:
        # - driver: SOAP::RPC::Driver object with the remote SOAP methods for
        #   this service
        # - api: the AdWords::API object to which the wrapper belongs
        #
        def initialize(driver, api)
          @driver = driver
          @api = api
          @module = AdWords::V201008::AlertService
        end

        # Calls the {get}[http://code.google.com/apis/adwords/v2009/docs/reference/AlertService.html#get] method of the Alert service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/v2009/docs/reference/AlertService.html#get].
        #
        # Args:
        # - selector: AdWords::V201008::AlertService::AlertSelector
        #
        # Returns:
        # - rval: AdWords::V201008::AlertService::AlertPage
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def get(selector)
          begin
            AdWords::Service.validate_param('selector',
                selector, AdWords::V201008::AlertService::AlertSelector)
            # Construct request object and make API call
            obj = AdWords::V201008::AlertService::Get.new(selector)
            return @driver.get(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "get Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

      end
    end
  end
end
