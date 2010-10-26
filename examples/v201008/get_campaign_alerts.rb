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
# This code example illustrates how to retrieve campaign alerts for a user.
# The alerts are restricted to a maximum of 10 entries.
#
# Tags: AlertService.get

require 'rubygems'
gem 'soap4r', '= 1.5.8'
require 'adwords4r'

API_VERSION = 201008

def format_id(id)
  str_id = id.to_s
  if str_id.size >= 6
    return str_id[0, 3] + '-' + str_id[3, 3] + '-' + str_id[6..-1]
  else
    return str_id
  end
end

def get_campaign_alerts()
  # AdWords::AdWordsCredentials.new will read a credentials file from
  # ENV['HOME']/adwords.properties when called without parameters.
  adwords = AdWords::API.new
  alert_srv = adwords.get_service('Alert', API_VERSION)

  # Create the alert query.
  # The 'module' method being called here provides a shortcut to the
  # module containing the classes for this service. This helps us avoid
  # typing the full class name every time we need to create an object.
  query = alert_srv.module::AlertQuery.new
  query.filterSpec = 'ALL'
  query.clientSpec = 'ALL'
  query.triggerTimeSpec = 'ALL_TIME'
  query.severities = ['GREEN', 'YELLOW', 'RED']
  query.types = ['CAMPAIGN_ENDING', 'CAMPAIGN_ENDED']

  # Create the selector.
  selector = alert_srv.module::AlertSelector.new
  selector.query = query
  selector.paging = {
    :startIndex => 0,
    :numberResults => 10
  }

  # Get alerts.
  response = alert_srv.get(selector)

  if response and response.rval and response.rval.entries
    alerts = response.rval.entries
    alerts.each_with_index do |alert, index|
      puts "{index}) Customer Id is #{format_id(alert.clientCustomerId)}, " +
          "alert type is '#{alert.alertType}', severity is " +
          "#{alert.alertSeverity}."
      alert.details.each do |detail|
        puts "  - triggered at #{detail.triggerTime}"
      end
    end
  else
    puts "No alerts were found."
  end
end

if __FILE__ == $0
  # To enable logging of SOAP requests, set the ADWORDS4R_DEBUG environment
  # variable to 'true'. This can be done either from your operating system
  # environment or via code, as done below.
  ENV['ADWORDS4R_DEBUG'] = 'true'

  begin
    get_campaign_alerts()

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
