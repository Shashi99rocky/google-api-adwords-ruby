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
# This example creates an experiment using a query percentage of 10, which
# defines what fraction of auctions should go to the control split (90%) vs.
# the experiment split (10%), then adds experimental bid changes for criteria
# and ad groups. To get campaigns, run get_all_campaigns.rb. To get ad groups,
# run get_all_ad_groups.rb. To get criteria, run get_all_ad_group_criteria.rb.
#
# Tags: ExperimentService.mutate

require 'rubygems'
gem 'soap4r', '= 1.5.8'
require 'adwords4r'

API_VERSION = 201008

def add_experiment()
  # AdWords::AdWordsCredentials.new will read a credentials file from
  # ENV['HOME']/adwords.properties when called without parameters.
  adwords = AdWords::API.new
  experiment_srv = adwords.get_service('Experiment', API_VERSION)

  campaign_id = 'INSERT_CAMPAIGN_ID_HERE'.to_i
  ad_group_id = 'INSERT_AD_GROUP_ID_HERE'.to_i
  criterion_id = 'INSERT_CRITERION_ID_HERE'.to_i

  # Prepare for adding experiment.
  operation = {
    :operand => {
      :campaignId => campaign_id,
      :name => 'Interplanetary Experiment #%s' % (Time.new.to_f * 1000).to_i,
      :queryPercentage => 10,
      :startDateTime => Time.now.strftime("%Y%m%d %H%M%S")
    },
    :operator => 'ADD'
  }

  # Add experiment.
  response = experiment_srv.mutate([operation])
  experiment = response.rval.value.first
  puts 'Experiment with name "%s" and id %d was added.' %
      [experiment.name, experiment.id]
end

if __FILE__ == $0
  # To enable logging of SOAP requests, set the ADWORDS4R_DEBUG environment
  # variable to 'true'. This can be done either from your operating system
  # environment or via code, as done below.
  ENV['ADWORDS4R_DEBUG'] = 'false'

  begin
    add_experiment()

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
