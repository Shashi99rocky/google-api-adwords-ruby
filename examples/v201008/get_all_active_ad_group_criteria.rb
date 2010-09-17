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
# This example illustrates how to retrieve all the active criteria for an ad
# group. To add criteria to an existing ad group, run add_ad_group_criteria.rb.
#
# Tags: AdGroupCriterionService.get

require 'rubygems'
gem 'soap4r', '= 1.5.8'
require 'adwords4r'

API_VERSION = 201008

def get_all_active_ad_group_criteria()
  # AdWords::AdWordsCredentials.new will read a credentials file from
  # ENV['HOME']/adwords.properties when called without parameters.
  adwords = AdWords::API.new
  ad_group_criterion_srv = adwords.get_service('AdGroupCriterion', API_VERSION)

  ad_group_id = 'INSERT_AD_GROUP_ID_HERE'.to_i

  # Get all the criteria for this ad group
  # The 'module' method being called here provides a shortcut to the
  # module containing the classes for this service. This helps us avoid
  # typing the full class name every time we need to create an object.
  selector = ad_group_criterion_srv.module::AdGroupCriterionSelector.new
  filter = ad_group_criterion_srv.module::AdGroupCriterionIdFilter.new
  filter.adGroupId = ad_group_id
  selector.idFilters = [filter]
  selector.userStatuses = ['ACTIVE']
  response = ad_group_criterion_srv.get(selector)
  if response and response.rval and response.rval.entries
    criteria = response.rval.entries
    puts "Ad group ##{ad_group_id} has #{criteria.length} active criteria."
    criteria.each do |criterion|
      puts "  Criterion id is #{criterion.criterion.id} and type is " +
           "#{criterion.adGroupCriterion_Type}."
    end
  else
      puts "No active criteria found for ad group ##{ad_group_id}."
  end
end

if __FILE__ == $0
  # To enable logging of SOAP requests, set the ADWORDS4R_DEBUG environment
  # variable to 'true'. This can be done either from your operating system
  # environment or via code, as done below.
  ENV['ADWORDS4R_DEBUG'] = 'false'

  begin
    get_all_active_ad_group_criteria()

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
