#!/usr/bin/ruby
#
# Author:: api.sgomes@gmail.com (Sérgio Gomes)
#
# Copyright:: Copyright 2010, Google Inc. All Rights Reserved.
#
# License:: Licensed under the Apache License, Version 2.0 (the "License");
#           you may not use this file except in compliance with the License.
#           You may obtain a copy of the License at
#
#           http://www.apache.org/licenses/LICENSE-2.0
#
#           Unless required by applicable law or agreed to in writing, software
#           distributed under the License is distributed on an "AS IS" BASIS,
#           WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
#           implied.
#           See the License for the specific language governing permissions and
#           limitations under the License.
#
# This example demonstrates how to handle policy violation errors. To create
# an ad group, run add_ad_group.rb.
#
# Tags: AdGroupAdService.mutate

require 'rubygems'
gem 'soap4r', '= 1.5.8'
require 'adwords4r'
require 'base64'

API_VERSION = 201008

def handle_policy_violation_error()
  # AdWords::AdWordsCredentials.new will read a credentials file from
  # ENV['HOME']/adwords.properties when called without parameters.
  adwords = AdWords::API.new
  ad_group_ad_srv = adwords.get_service('AdGroupAd', API_VERSION)

  ad_group_id = 'INSERT_AD_GROUP_ID_HERE'.to_i

  # Create text ad.
  # The 'module' method being called here provides a shortcut to the
  # module containing the classes for this service. This helps us avoid
  # typing the full class name every time we need to create an object.
  text_ad = ad_group_ad_srv.module::TextAd.new
  text_ad.headline = 'Mars Cruise!!!'
  text_ad.description1 = 'Visit the Red Planet in style.'
  text_ad.description2 = 'Low-gravity fun for everyone!'
  text_ad.url = 'http://www.example.com'
  text_ad.displayUrl = 'www.example.com'
  text_ad_operation = ad_group_ad_srv.module::AdGroupAdOperation.new
  operand = ad_group_ad_srv.module::AdGroupAd.new
  operand.adGroupId = ad_group_id
  operand.ad = text_ad
  text_ad_operation.operand = operand
  text_ad_operation.operator = 'ADD'

  operations = [text_ad_operation]

  # Validate ad.
  begin
    # Enable "validate only" for the length of this block
    adwords.validate_only do
      ad_group_ad_srv.mutate(operations)
    end
  rescue AdWords::Error::ApiError => e
    errors = []
    if e.inner_fault and e.inner_fault.detail and
       e.inner_fault.detail.apiExceptionFault
      fault = e.inner_fault.detail.apiExceptionFault
      if fault and fault.errors
        errors = fault.errors
      end
    end
    errors.each do |error|
      if error.class.name.include? 'PolicyViolationError'
        operation_index = AdWords::Utils.operation_index_for_error(error)
        operation = operations[operation_index]
        puts "Ad with headline '%s' violated %s policy '%s'." %
            [operation.operand.ad.headline,
             error.isExemptable ? 'exemptable' : 'non-exemptable',
             error.externalPolicyName]
        if error.isExemptable
          # Add exemption request to the operation.
          puts "Adding exemption request for policy name '%s' on text '%s'." %
              [error.key.policyName, error.key.violatingText]
          exemption_request = ad_group_ad_srv.module::ExemptionRequest.new
          exemption_request.key = error.key
          operation.exemptionRequests = [] if operation.exemptionRequests.nil?
          operation.exemptionRequests << exemption_request
        else
          # Remove non-exemptable operation
          puts "Removing the operation from the request."
          operations.delete(operation)
        end
      else
        # Non-policy error returned, re-throw exception.
        raise e
      end
    end
  end

  # Add ads.
  if operations.size > 0
    response = ad_group_ad_srv.mutate(operations)
    if response and response.rval and response.rval.value
      ads = response.rval.value
      puts "Added #{ads.length} ad(s) to ad group #{ad_group_id}."
      ads.each do |ad|
        puts "  Ad id is #{ad.ad.id}, type is #{ad.ad.ad_Type} and status is " +
             "\"#{ad.status}\"."
      end
    else
        puts "No ads were added."
    end
  end
end

if __FILE__ == $0
  # To enable logging of SOAP requests, set the ADWORDS4R_DEBUG environment
  # variable to 'true'. This can be done either from your operating system
  # environment or via code, as done below.
  ENV['ADWORDS4R_DEBUG'] = 'false'

  begin
    handle_policy_violation_error()

  # Connection error. Likely transitory.
  rescue Errno::ECONNRESET, SOAP::HTTPStreamError, SocketError => e
    puts 'Connection Error: %s' % e
    puts 'Source: %s' % e.backtrace.first

  # API Error.
  rescue AdWords::Error::ApiError => e
    puts 'SOAP Error: %s (code: %d)' % [e.soap_faultstring_ex, e.code_ex]
    puts 'Trigger: %s' % e.trigger_ex unless e.trigger_ex.nil?
    puts 'Source: %s' % e.backtrace.first
  end
end
