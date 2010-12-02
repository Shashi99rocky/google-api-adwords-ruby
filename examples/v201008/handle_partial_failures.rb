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
# This example demonstrates how to handle partial failures.
#
# Tags: AdGroupCriterionService.mutate

require 'rubygems'
gem 'soap4r', '= 1.5.8'
require 'adwords4r'

API_VERSION = 201008

def handle_partial_failures()
  # AdWords::AdWordsCredentials.new will read a credentials file from
  # ENV['HOME']/adwords.properties when called without parameters.
  adwords = AdWords::API.new
  ad_group_criterion_srv = adwords.get_service('AdGroupCriterion', API_VERSION)

  ad_group_id = 'INSERT_AD_GROUP_ID_HERE'.to_i

  # Set partial failures flag.
  adwords.partial_failure = true

  # Create keywords.
  keyword_text = ['mars cruise', 'inv@lid cruise', 'venus cruise',
                  'b(a)d keyword cruise']
  keywords = []
  keyword_text.each do |text|
    # The 'module' method being called here provides a shortcut to the
    # module containing the classes for this service. This helps us avoid
    # typing the full class name every time we need to create an object.
    keyword = ad_group_criterion_srv.module::Keyword.new
    keyword.matchType = 'BROAD'
    keyword.text = text
    keywords << keyword
  end

  # Create biddable ad group criteria and operations.
  operations = []
  keywords.each do |kwd|
    ad_group_criterion =
        ad_group_criterion_srv.module::BiddableAdGroupCriterion.new
    ad_group_criterion.adGroupId = ad_group_id
    ad_group_criterion.criterion = kwd
    operation = ad_group_criterion_srv.module::AdGroupCriterionOperation.new
    operation.operand = ad_group_criterion
    operation.operator = 'ADD'
    operations << operation
  end

  # Add criteria.
  response = ad_group_criterion_srv.mutate(operations)
  if response and response.rval and response.rval.value
    ad_group_criteria = response.rval.value
    ad_group_criteria.each do |ad_group_criterion|
      if ad_group_criterion.criterion
        puts "Ad group criterion with ad group id " +
           "#{ad_group_criterion.adGroupId}, criterion id "+
           "#{ad_group_criterion.criterion.id} and keyword \"" +
           "#{ad_group_criterion.criterion.text}\" was added."
      end
    end
  else
    puts "No criteria were added."
  end

  # Check partial failures.
  if response and response.rval and response.rval.partialFailureErrors
    response.rval.partialFailureErrors.each do |error|
      operation_index = AdWords::Utils.operation_index_for_error(error)
      if operation_index
        ad_group_criterion = operations[operation_index].operand
        puts "Ad group criterion with ad group id " +
            "#{ad_group_criterion.adGroupId} and keyword \"" +
            "#{ad_group_criterion.criterion.text}\" triggered an error for " +
            "the following reason: \"#{error.errorString}\"."
      end
    end
  end
end

if __FILE__ == $0
  # To enable logging of SOAP requests, set the ADWORDS4R_DEBUG environment
  # variable to 'true'. This can be done either from your operating system
  # environment or via code, as done below.
  ENV['ADWORDS4R_DEBUG'] = 'false'

  begin
    handle_partial_failures()

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
