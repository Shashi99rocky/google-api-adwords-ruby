#!/usr/bin/ruby
#
# Author:: sgomes@google.com (Sérgio Gomes)
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
# This example deletes a bulk mutate job using the 'REMOVE' operator. Jobs may
# only deleted if they are in the 'PENDING' state and have not yet recieved
# all of their request parts. To get bulk mutate jobs, run
# get_all_bulk_mutate_jobs.rb.
#
# Tags: BulkMutateJobService.mutate

require 'rubygems'
gem 'soap4r', '= 1.5.8'
require 'adwords4r'

API_VERSION = 201008

def delete_bulk_mutate_job()
  # AdWords::AdWordsCredentials.new will read a credentials file from
  # ENV['HOME']/adwords.properties when called without parameters.
  adwords = AdWords::API.new
  bulk_mutate_job_srv = adwords.get_service('BulkMutateJob', API_VERSION)

  job_id = 'INSERT_BULK_MUTATE_JOB_ID_HERE'

  # Create a job.
  job = bulk_mutate_job_srv.module::BulkMutateJob.new
  job.id = job_id

  # Create operation.
  job_operation = bulk_mutate_job_srv.module::JobOperation.new
  job_operation.operator = 'REMOVE'
  job_operation.operand = job

  # Delete job.
  response = bulk_mutate_job_srv.mutate(job_operation)
  job = response.rval
  puts 'Job id %d was successfully deleted.' % job.id

end

if __FILE__ == $0
  # To enable logging of SOAP requests, set the ADWORDS4R_DEBUG environment
  # variable to 'true'. This can be done either from your operating system
  # environment or via code, as done below.
  ENV['ADWORDS4R_DEBUG'] = 'false'

  begin
    delete_bulk_mutate_job()

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
