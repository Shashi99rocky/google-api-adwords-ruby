# This file was automatically generated during the "rake generate" step of
# library setup.
require 'adwords4r/v201008/ReportDefinitionServiceDriver.rb'

module AdWords
  module V201008
    module ReportDefinitionService

      # Wrapper class for the v201008 ReportDefinition service.
      # This class is automatically generated.
      class ReportDefinitionServiceWrapper

        # Holds the AdWords::API object to which the wrapper belongs.
        attr_reader :api

        # Holds a shortcut to the parent module.
        # Use this to avoid typing the full class name when creating classes
        # belonging to this service, e.g.
        #  service_object.module::ClassName
        # instead of
        #  AdWords::V201008::ReportDefinitionService::ClassName
        # This will make it easier to migrate your code between API versions.
        attr_reader :module

        public

        # Constructor for ReportDefinitionServiceWrapper.
        #
        # Args:
        # - driver: SOAP::RPC::Driver object with the remote SOAP methods for
        #   this service
        # - api: the AdWords::API object to which the wrapper belongs
        #
        def initialize(driver, api)
          @driver = driver
          @api = api
          @module = AdWords::V201008::ReportDefinitionService
        end

        # Calls the {get}[http://code.google.com/apis/adwords/v2009/docs/reference/ReportDefinitionService.html#get] method of the ReportDefinition service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/v2009/docs/reference/ReportDefinitionService.html#get].
        #
        # Args:
        # - selector: AdWords::V201008::ReportDefinitionService::ReportDefinitionSelector
        #
        # Returns:
        # - rval: AdWords::V201008::ReportDefinitionService::ReportDefinitionPage
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def get(selector)
          begin
            AdWords::Service.validate_param('selector',
                selector, AdWords::V201008::ReportDefinitionService::ReportDefinitionSelector)
            # Construct request object and make API call
            obj = AdWords::V201008::ReportDefinitionService::Get.new(selector)
            return @driver.get(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "get Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

        # Calls the {getReportFields}[http://code.google.com/apis/adwords/v2009/docs/reference/ReportDefinitionService.html#getReportFields] method of the ReportDefinition service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/v2009/docs/reference/ReportDefinitionService.html#getReportFields].
        #
        # Args:
        # - reportType: AdWords::V201008::ReportDefinitionService::ReportDefinitionReportType
        #
        # Returns:
        # - rval: SOAP::SOAPArray of AdWords::V201008::ReportDefinitionService::ReportDefinitionField
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def getReportFields(reportType)
          begin
            AdWords::Service.validate_param('reportType',
                reportType, AdWords::V201008::ReportDefinitionService::ReportDefinitionReportType)
            # Construct request object and make API call
            obj = AdWords::V201008::ReportDefinitionService::GetReportFields.new(reportType)
            return @driver.getReportFields(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "getReportFields Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

        # Calls the {mutate}[http://code.google.com/apis/adwords/v2009/docs/reference/ReportDefinitionService.html#mutate] method of the ReportDefinition service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/v2009/docs/reference/ReportDefinitionService.html#mutate].
        #
        # Args:
        # - operations: SOAP::SOAPArray of AdWords::V201008::ReportDefinitionService::ReportDefinitionOperation
        #
        # Returns:
        # - rval: SOAP::SOAPArray of AdWords::V201008::ReportDefinitionService::ReportDefinition
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def mutate(operations)
          begin
            AdWords::Service.validate_param('operations',
                operations, SOAP::SOAPArray)
            # Construct request object and make API call
            obj = AdWords::V201008::ReportDefinitionService::Mutate.new(operations)
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