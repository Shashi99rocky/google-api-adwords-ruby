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
# This example illustrates how to retrieve the account hierarchy under an
# account.
#
# Tags: ServicedAccountService.get

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

def get_account_hierarchy()
  # AdWords::AdWordsCredentials.new will read a credentials file from
  # ENV['HOME']/adwords.properties when called without parameters.
  adwords = AdWords::API.new
  serviced_account_srv = adwords.get_service('ServicedAccount', API_VERSION)

  # Get the account hierarchy for this account.
  # The 'module' method being called here provides a shortcut to the
  # module containing the classes for this service. This helps us avoid
  # typing the full class name every time we need to create an object.
  selector = serviced_account_srv.module::ServicedAccountSelector.new
  selector.serviceTypes = ['UI_AND_API', 'API_ONLY']
  selector.enablePaging = false

  response = nil

  # Run with MCC account.
  adwords.use_mcc do
    response = serviced_account_srv.get(selector)
  end

  if response and response.rval
    # Display the accounts.
    graph = response.rval
    account_number = graph.accounts ? graph.accounts.size : 0
    puts "There are %d customers under this account hierarchy." %
        account_number
    if graph.accounts
      graph.accounts.each_with_index do |account, index|
        puts "#{index + 1}) Customer id: #{format_id(account.customerId)}"
        puts "Login email: #{account.login}"
        puts "Company Name: #{account.companyName}"
        puts "IsMcc: #{account.canManageClients}"
        puts ''
      end

      puts ''

      # Display the links.
      graph.links.each do |link|
        puts "There is a #{link.typeOfLink} link of type #{link.serviceType} " +
            "from #{format_id(link.managerId.id)} to " +
            "#{format_id(link.clientId.id)}"
      end
    end
  else
      puts "No accounts were found."
  end
end

if __FILE__ == $0
  # To enable logging of SOAP requests, set the ADWORDS4R_DEBUG environment
  # variable to 'true'. This can be done either from your operating system
  # environment or via code, as done below.
  ENV['ADWORDS4R_DEBUG'] = 'false'

  begin
    get_account_hierarchy()

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
