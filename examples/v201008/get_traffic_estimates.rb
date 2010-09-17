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
# This example gets keyword traffic estimates.
#
# Tags: TrafficEstimatorService.get

require 'rubygems'
gem 'soap4r', '= 1.5.8'
require 'adwords4r'

API_VERSION = 201008

def get_traffic_estimates()
  # AdWords::AdWordsCredentials.new will read a credentials file from
  # ENV['HOME']/adwords.properties when called without parameters.
  adwords = AdWords::API.new
  traffic_estimator_srv = adwords.get_service('TrafficEstimator', API_VERSION)

  # Create keywords. Up to 2000 keywords can be passed in a single request.
  keywords = []
  # The 'module' method being called here provides a shortcut to the
  # module containing the classes for this service. This helps us avoid
  # typing the full class name every time we need to create an object.
  keyword = traffic_estimator_srv.module::Keyword.new
  keyword.text = 'mars cruise'
  keyword.matchType = 'BROAD'
  keywords << keyword
  keyword = traffic_estimator_srv.module::Keyword.new
  keyword.text = 'cheap cruise'
  keyword.matchType = 'PHRASE'
  keywords << keyword
  keyword = traffic_estimator_srv.module::Keyword.new
  keyword.text = 'cruise'
  keyword.matchType = 'EXACT'
  keywords << keyword

  # Create a keyword estimate request for each keyword.
  keyword_requests = []
  keywords.each do |keyword|
    request = traffic_estimator_srv.module::KeywordEstimateRequest.new
    request.keyword = keyword
    keyword_requests << request
  end

  # Create ad group estimate requests.
  ad_group_request = traffic_estimator_srv.module::AdGroupEstimateRequest.new
  ad_group_request.keywordEstimateRequests = keyword_requests
  ad_group_request.maxCpc = { :microAmount => 1000000 }

  # Create campaign estimate requests.
  campaign_request = traffic_estimator_srv.module::CampaignEstimateRequest.new
  campaign_request.adGroupEstimateRequests = [ad_group_request]
  country_target = traffic_estimator_srv.module::CountryTarget.new
  country_target.countryCode = 'US'
  language_target = traffic_estimator_srv.module::LanguageTarget.new
  language_target.languageCode = 'en'
  campaign_request.targets = [country_target, language_target]

  # Create selector.
  selector = [campaign_request]
  response = traffic_estimator_srv.get(selector)
  if response and response.rval and response.rval.entries
    campaign_estimates = response.rval.entries
    keyword_estimates =
        campaign_estimates.first.adGroupEstimates.first.keywordEstimates
    keyword_estimates.each_with_index do |estimate, index|
      keyword = keyword_requests[index].keyword

      # Find the mean of the min and max values.
      mean_avg_cpc = (estimate.min.averageCpc.microAmount +
                      estimate.max.averageCpc.microAmount) / 2
      mean_avg_position = (estimate.min.averagePosition +
                           estimate.max.averagePosition) / 2
      mean_clicks = (estimate.min.clicks + estimate.max.clicks) / 2
      mean_total_cost = (estimate.min.totalCost.microAmount +
                         estimate.max.totalCost.microAmount) / 2

      puts "Results for the keyword with text #{keyword.text} and match type " +
           "#{keyword.matchType}:"
      puts "  Estimated average CPC: %d" % mean_avg_cpc
      puts "  Estimated ad position: %.2f" % mean_avg_position
      puts "  Estimated daily clicks: %d" % mean_clicks
      puts "  Estimated daily cost: %d" % mean_total_cost
    end
  else
      puts "No traffic estimates were returned."
  end
end

if __FILE__ == $0
  # To enable logging of SOAP requests, set the ADWORDS4R_DEBUG environment
  # variable to 'true'. This can be done either from your operating system
  # environment or via code, as done below.
  ENV['ADWORDS4R_DEBUG'] = 'false'

  begin
    get_traffic_estimates()

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
