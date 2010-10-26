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
# This example gets all bulk mutate jobs in the account. To add a bulk mutate
# job, run perform_bulk_mutate_job.rb.
#
# Tags: BulkMutateJobService.get

require 'rubygems'
gem 'soap4r', '= 1.5.8'
require 'adwords4r'

API_VERSION = 201008

def get_all_bulk_mutate_jobs()
  # AdWords::AdWordsCredentials.new will read a credentials file from
  # ENV['HOME']/adwords.properties when called without parameters.
  adwords = AdWords::API.new
  bulk_mutate_job_srv = adwords.get_service('BulkMutateJob', API_VERSION)

  # Get all the bulk mutate jobs.
  # The 'module' method being called here provides a shortcut to the
  # module containing the classes for this service. This helps us avoid
  # typing the full class name every time we need to create an object.
  selector = bulk_mutate_job_srv.module::BulkMutateJobSelector.new
  response = bulk_mutate_job_srv.get(selector)

  if response and response.entries
    jobs = response.entries
    jobs.each do |job|
      puts "Bulk mutate job with id %d and status '%s' was found." %
          [job.id, job.status]
      if job.status == 'PENDING'
        puts "  Total parts: %d, parts received: %d." %
            [job.numRequestParts, job.numRequestPartsReceived]
      elsif job.status == 'PROCESSING'
        if job.stats
          puts "  Percent complete: %d." % job.stats.progressPercent
        end
      elsif job.status == 'COMPLETED'
        if job.stats
          puts "  Total operations: %d, failed: %d, unprocessed %d." %
              [job.stats.numOperations, job.stats.numFailedOperations,
               job.stats.numUnprocessedOperations]
        end
      end
    end
  else
    puts "No bulk mutate jobs were found."
  end
end

if __FILE__ == $0
  # To enable logging of SOAP requests, set the ADWORDS4R_DEBUG environment
  # variable to 'true'. This can be done either from your operating system
  # environment or via code, as done below.
  ENV['ADWORDS4R_DEBUG'] = 'false'

  begin
    get_all_bulk_mutate_jobs()

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
