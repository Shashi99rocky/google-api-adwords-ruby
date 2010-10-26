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
# This example illustrates how to update a user list, setting its description.
# To create a user list, run add_user_list.rb.
#
# Tags: UserListService.mutate

require 'rubygems'
gem 'soap4r', '= 1.5.8'
require 'adwords4r'

API_VERSION = 201008

def update_user_list()
  # AdWords::AdWordsCredentials.new will read a credentials file from
  # ENV['HOME']/adwords.properties when called without parameters.
  adwords = AdWords::API.new
  user_list_srv = adwords.get_service('UserList', API_VERSION)

  user_list_id = 'INSERT_USER_LIST_ID_HERE'.to_i

  # Prepare for updating remarketing user list. Bear in mind that you must
  # create an object of the appropriate type in order to perform the update.
  # If you are unsure which type a user list is, you should perform a 'get' on
  # it first.
  user_list = user_list_srv.module::RemarketingUserList.new
  user_list.id = user_list_id
  user_list.description = 'Last updated at %s' % Time.now.to_s
  operation = {
    :operand => user_list,
    :operator => 'SET'
  }

  # Update user list.
  response = user_list_srv.mutate([operation])
  user_list = response.rval.value.first
  puts 'User list id %d was successfully updated, description set to %s.' %
      [user_list.id, user_list.description]
end

if __FILE__ == $0
  # To enable logging of SOAP requests, set the ADWORDS4R_DEBUG environment
  # variable to 'true'. This can be done either from your operating system
  # environment or via code, as done below.
  ENV['ADWORDS4R_DEBUG'] = 'false'

  begin
    update_user_list()

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
