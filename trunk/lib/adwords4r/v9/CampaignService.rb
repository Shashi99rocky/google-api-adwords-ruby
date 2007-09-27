require 'xsd/qname'

module AdWords; module CampaignService


# {https://adwords.google.com/api/adwords/v9}AdSchedule
class AdSchedule
  attr_accessor :intervals
  attr_accessor :status

  def initialize(intervals = [], status = nil)
    @intervals = intervals
    @status = status
  end
end

# {https://adwords.google.com/api/adwords/v9}ApiError
class ApiError
  attr_accessor :code
  attr_accessor :detail
  attr_accessor :field
  attr_accessor :index
  attr_accessor :isExemptable
  attr_accessor :textIndex
  attr_accessor :textLength
  attr_accessor :trigger

  def initialize(code = nil, detail = nil, field = nil, index = nil, isExemptable = nil, textIndex = nil, textLength = nil, trigger = nil)
    @code = code
    @detail = detail
    @field = field
    @index = index
    @isExemptable = isExemptable
    @textIndex = textIndex
    @textLength = textLength
    @trigger = trigger
  end
end

# {https://adwords.google.com/api/adwords/v9}ApiException
class ApiException
  attr_accessor :code
  attr_accessor :errors
  attr_accessor :internal
  attr_accessor :message
  attr_accessor :trigger

  def initialize(code = nil, errors = [], internal = nil, message = nil, trigger = nil)
    @code = code
    @errors = errors
    @internal = internal
    @message = message
    @trigger = trigger
  end
end

# {https://adwords.google.com/api/adwords/v9}BudgetOptimizerSettings
class BudgetOptimizerSettings
  attr_accessor :bidCeiling
  attr_accessor :enabled
  attr_accessor :takeOnOptimizedBids

  def initialize(bidCeiling = nil, enabled = nil, takeOnOptimizedBids = nil)
    @bidCeiling = bidCeiling
    @enabled = enabled
    @takeOnOptimizedBids = takeOnOptimizedBids
  end
end

# {https://adwords.google.com/api/adwords/v9}Campaign
class Campaign
  attr_accessor :budgetOptimizerSettings
  attr_accessor :dailyBudget
  attr_accessor :enableSeparateContentBids
  attr_accessor :endDay
  attr_accessor :geoTargeting
  attr_accessor :id
  attr_accessor :languageTargeting
  attr_accessor :name
  attr_accessor :networkTargeting
  attr_accessor :schedule
  attr_accessor :startDay
  attr_accessor :status

  def initialize(budgetOptimizerSettings = nil, dailyBudget = nil, enableSeparateContentBids = nil, endDay = nil, geoTargeting = nil, id = nil, languageTargeting = nil, name = nil, networkTargeting = nil, schedule = nil, startDay = nil, status = nil)
    @budgetOptimizerSettings = budgetOptimizerSettings
    @dailyBudget = dailyBudget
    @enableSeparateContentBids = enableSeparateContentBids
    @endDay = endDay
    @geoTargeting = geoTargeting
    @id = id
    @languageTargeting = languageTargeting
    @name = name
    @networkTargeting = networkTargeting
    @schedule = schedule
    @startDay = startDay
    @status = status
  end
end

# {https://adwords.google.com/api/adwords/v9}GeoTarget
class GeoTarget
  attr_accessor :cities
  attr_accessor :countries
  attr_accessor :metros
  attr_accessor :regions

  def initialize(cities = [], countries = [], metros = [], regions = [])
    @cities = cities
    @countries = countries
    @metros = metros
    @regions = regions
  end
end

# {https://adwords.google.com/api/adwords/v9}LanguageTarget
class LanguageTarget < ::Array
end

# {https://adwords.google.com/api/adwords/v9}NetworkTarget
class NetworkTarget < ::Array
end

# {https://adwords.google.com/api/adwords/v9}SchedulingInterval
class SchedulingInterval
  attr_accessor :day
  attr_accessor :endHour
  attr_accessor :endMinute
  attr_accessor :multiplier
  attr_accessor :startHour
  attr_accessor :startMinute

  def initialize(day = nil, endHour = nil, endMinute = nil, multiplier = nil, startHour = nil, startMinute = nil)
    @day = day
    @endHour = endHour
    @endMinute = endMinute
    @multiplier = multiplier
    @startHour = startHour
    @startMinute = startMinute
  end
end

# {https://adwords.google.com/api/adwords/v9}StatsRecord
class StatsRecord
  attr_accessor :averagePosition
  attr_accessor :clicks
  attr_accessor :conversionRate
  attr_accessor :conversions
  attr_accessor :cost
  attr_accessor :id
  attr_accessor :impressions

  def initialize(averagePosition = nil, clicks = nil, conversionRate = nil, conversions = nil, cost = nil, id = nil, impressions = nil)
    @averagePosition = averagePosition
    @clicks = clicks
    @conversionRate = conversionRate
    @conversions = conversions
    @cost = cost
    @id = id
    @impressions = impressions
  end
end

# {https://adwords.google.com/api/adwords/v9}AdScheduleStatus
class AdScheduleStatus < ::String
  Disabled = AdScheduleStatus.new("Disabled")
  Enabled = AdScheduleStatus.new("Enabled")
end

# {https://adwords.google.com/api/adwords/v9}CampaignStatus
class CampaignStatus < ::String
  Active = CampaignStatus.new("Active")
  Deleted = CampaignStatus.new("Deleted")
  Ended = CampaignStatus.new("Ended")
  Paused = CampaignStatus.new("Paused")
  Pending = CampaignStatus.new("Pending")
  Suspended = CampaignStatus.new("Suspended")
end

# {https://adwords.google.com/api/adwords/v9}DayOfWeek
class DayOfWeek < ::String
  Friday = DayOfWeek.new("Friday")
  Monday = DayOfWeek.new("Monday")
  Saturday = DayOfWeek.new("Saturday")
  Sunday = DayOfWeek.new("Sunday")
  Thursday = DayOfWeek.new("Thursday")
  Tuesday = DayOfWeek.new("Tuesday")
  Wednesday = DayOfWeek.new("Wednesday")
end

# {https://adwords.google.com/api/adwords/v9}NetworkType
class NetworkType < ::String
  ContentNetwork = NetworkType.new("ContentNetwork")
  GoogleSearch = NetworkType.new("GoogleSearch")
  SearchNetwork = NetworkType.new("SearchNetwork")
end

# {https://adwords.google.com/api/adwords/v9}addCampaign
class AddCampaign
  attr_accessor :campaign

  def initialize(campaign = nil)
    @campaign = campaign
  end
end

# {https://adwords.google.com/api/adwords/v9}addCampaignList
class AddCampaignList < ::Array
end

# {https://adwords.google.com/api/adwords/v9}addCampaignListResponse
class AddCampaignListResponse < ::Array
end

# {https://adwords.google.com/api/adwords/v9}addCampaignResponse
class AddCampaignResponse
  attr_accessor :addCampaignReturn

  def initialize(addCampaignReturn = nil)
    @addCampaignReturn = addCampaignReturn
  end
end

# {https://adwords.google.com/api/adwords/v9}getAllAdWordsCampaigns
class GetAllAdWordsCampaigns
  attr_accessor :dummy

  def initialize(dummy = nil)
    @dummy = dummy
  end
end

# {https://adwords.google.com/api/adwords/v9}getAllAdWordsCampaignsResponse
class GetAllAdWordsCampaignsResponse < ::Array
end

# {https://adwords.google.com/api/adwords/v9}getCampaign
class GetCampaign
  attr_accessor :id

  def initialize(id = nil)
    @id = id
  end
end

# {https://adwords.google.com/api/adwords/v9}getCampaignList
class GetCampaignList < ::Array
end

# {https://adwords.google.com/api/adwords/v9}getCampaignListResponse
class GetCampaignListResponse < ::Array
end

# {https://adwords.google.com/api/adwords/v9}getCampaignResponse
class GetCampaignResponse
  attr_accessor :getCampaignReturn

  def initialize(getCampaignReturn = nil)
    @getCampaignReturn = getCampaignReturn
  end
end

# {https://adwords.google.com/api/adwords/v9}getCampaignStats
class GetCampaignStats
  attr_accessor :campaignIds
  attr_accessor :startDay
  attr_accessor :endDay

  def initialize(campaignIds = [], startDay = nil, endDay = nil)
    @campaignIds = campaignIds
    @startDay = startDay
    @endDay = endDay
  end
end

# {https://adwords.google.com/api/adwords/v9}getCampaignStatsResponse
class GetCampaignStatsResponse < ::Array
end

# {https://adwords.google.com/api/adwords/v9}getOptimizeAdServing
class GetOptimizeAdServing
  attr_accessor :campaignId

  def initialize(campaignId = nil)
    @campaignId = campaignId
  end
end

# {https://adwords.google.com/api/adwords/v9}getOptimizeAdServingResponse
class GetOptimizeAdServingResponse
  attr_accessor :getOptimizeAdServingReturn

  def initialize(getOptimizeAdServingReturn = nil)
    @getOptimizeAdServingReturn = getOptimizeAdServingReturn
  end
end

# {https://adwords.google.com/api/adwords/v9}setOptimizeAdServing
class SetOptimizeAdServing
  attr_accessor :campaignId
  attr_accessor :enable

  def initialize(campaignId = nil, enable = nil)
    @campaignId = campaignId
    @enable = enable
  end
end

# {https://adwords.google.com/api/adwords/v9}setOptimizeAdServingResponse
class SetOptimizeAdServingResponse
  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v9}updateCampaign
class UpdateCampaign
  attr_accessor :campaign

  def initialize(campaign = nil)
    @campaign = campaign
  end
end

# {https://adwords.google.com/api/adwords/v9}updateCampaignList
class UpdateCampaignList < ::Array
end

# {https://adwords.google.com/api/adwords/v9}updateCampaignListResponse
class UpdateCampaignListResponse
  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v9}updateCampaignResponse
class UpdateCampaignResponse
  def initialize
  end
end


end; end
