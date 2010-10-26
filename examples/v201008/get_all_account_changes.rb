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
# This example gets all account changes between the two dates specified, for
# all campaigns.
#
# Tags: CustomerSyncService.get

require 'rubygems'
gem 'soap4r', '= 1.5.8'
require 'adwords4r'
require 'pp'

API_VERSION = 201008

def get_all_account_changes()
  # AdWords::AdWordsCredentials.new will read a credentials file from
  # ENV['HOME']/adwords.properties when called without parameters.
  adwords = AdWords::API.new
  campaign_srv = adwords.get_service('Campaign', API_VERSION)
  customer_sync_srv = adwords.get_service('CustomerSync', API_VERSION)

  today_at_midnight = DateTime.parse(Date.today.to_s)
  yesterday_at_midnight = DateTime.parse((Date.today - 1).to_s)
  min_date_time = yesterday_at_midnight.strftime("%Y%m%d %H%M%S")
  max_date_time = today_at_midnight.strftime("%Y%m%d %H%M%S")

  # Get all the campaigns for this account.
  # The 'module' method being called here provides a shortcut to the
  # module containing the classes for this service. This helps us avoid
  # typing the full class name every time we need to create an object.
  selector = campaign_srv.module::CampaignSelector.new
  response = campaign_srv.get(selector)

  campaign_ids = []

  if response and response.rval and response.rval.entries
    campaigns = response.rval.entries
    campaign_ids = campaigns.map { |campaign| campaign.id }
  else
      puts "No campaigns were found."
      return
  end

  # Create date time range.
  date_time_range = {
    :min => min_date_time,
    :max => max_date_time
  }

  # Create selector.
  selector = customer_sync_srv.module::CustomerSyncSelector.new
  selector.dateTimeRange = date_time_range
  selector.campaignIds = campaign_ids

  # Get all account changes for campaigns.
  response = customer_sync_srv.get(selector)

  # Display changes.
  if response and response.rval
    campaign_changes = response.rval
    puts "Most recent change: #{campaign_changes.lastChangeTimestamp}"
    campaign_changes.changedCampaigns.each do |campaign|
      puts "Campaign with id #{campaign.campaignId} was changed:"
      puts "  Campaign changed status: #{campaign.campaignChangeStatus}"
      if campaign.campaignChangeStatus != 'NEW'
        puts "  Added ad extensions: %s" %
            campaign.addedAdExtensions.pretty_inspect
        puts "  Added campaign criteria: %s" %
            campaign.addedCampaignCriteria.pretty_inspect
        puts "  Added campaign targeting: %s" %
            campaign.campaignTargetingChanged.pretty_inspect
        puts "  Deleted ad extensions: %s" %
            campaign.deletedAdExtensions.pretty_inspect
        puts "  Deleted campaign criteria: %s" %
            campaign.deletedCampaignCriteria.pretty_inspect

        if campaign.changedAdGroups
          campaign.changedAdGroups.each do |ad_group|
            puts "  Ad group with id #{ad_group.adGroupId} was changed:"
            puts "    Ad group changed status: #{ad_group.adGroupChangeStatus}"
            if ad_group.adGroupChangeStatus != 'NEW'
              puts "    Ads changed: %s" % ad_group.changedAds.pretty_inspect
              puts "    Criteria changed: %s" %
                  ad_group.changedCriteria.pretty_inspect
              puts "    Criteria deleted: %s" %
                  ad_group.deletedCriteria.pretty_inspect
            end
          end
        end
      end
      puts ''
    end
  else
    puts "No account changes were found."
  end


end

if __FILE__ == $0
  # To enable logging of SOAP requests, set the ADWORDS4R_DEBUG environment
  # variable to 'true'. This can be done either from your operating system
  # environment or via code, as done below.
  ENV['ADWORDS4R_DEBUG'] = 'false'

  begin
    get_all_account_changes()

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
