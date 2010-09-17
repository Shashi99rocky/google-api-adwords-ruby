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
# This example promotes an experiment, which permanently applies all the
# experiment changes made to its related ad groups, criteria and ads. To get
# experiments, run get_all_experiments.rb.
#
# Tags: ExperimentService.mutate

require 'rubygems'
gem 'soap4r', '= 1.5.8'
require 'adwords4r'

API_VERSION = 201008

def promote_experiment()
  # AdWords::AdWordsCredentials.new will read a credentials file from
  # ENV['HOME']/adwords.properties when called without parameters.
  adwords = AdWords::API.new
  experiment_srv = adwords.get_service('Experiment', API_VERSION)

  experiment_id = 'INSERT_EXPERIMENT_ID_HERE'.to_i

  # Prepare for updating experiment.
  operation = {
    :operand => {
      :id => experiment_id,
      :status => 'PROMOTED',
    },
    :operator => 'SET'
  }

  # Update experiment.
  response = experiment_srv.mutate([operation])
  experiment = response.rval.value.first
  puts 'Experiment with name "%s" and id %d was promoted.' %
      [experiment.name, experiment.id]
end

if __FILE__ == $0
  # To enable logging of SOAP requests, set the ADWORDS4R_DEBUG environment
  # variable to 'true'. This can be done either from your operating system
  # environment or via code, as done below.
  ENV['ADWORDS4R_DEBUG'] = 'false'

  begin
    promote_experiment()

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
