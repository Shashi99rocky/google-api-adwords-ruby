require 'adwords4r/v201003/AdGroupAdService'
require 'soap/mapping'

module AdWords; module V201003; module AdGroupAdService

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsV201003 = "https://adwords.google.com/api/adwords/cm/v201003"

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::AdError,
    :schema_type => XSD::QName.new(NsV201003, "AdError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupAdService::AdErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::AdExtensionOverrideStats,
    :schema_type => XSD::QName.new(NsV201003, "AdExtensionOverrideStats"),
    :schema_basetype => XSD::QName.new(NsV201003, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdWords::V201003::AdGroupAdService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdWords::V201003::AdGroupAdService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdWords::V201003::AdGroupAdService::Money", [0, 1]],
      ["averageCpm", "AdWords::V201003::AdGroupAdService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdWords::V201003::AdGroupAdService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdWords::V201003::AdGroupAdService::Money", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Stats.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::AdGroupAdCountLimitExceeded,
    :schema_type => XSD::QName.new(NsV201003, "AdGroupAdCountLimitExceeded"),
    :schema_basetype => XSD::QName.new(NsV201003, "EntityCountLimitExceeded"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupAdService::EntityCountLimitExceededReason", [0, 1]],
      ["enclosingId", "SOAP::SOAPString", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::AdGroupAdError,
    :schema_type => XSD::QName.new(NsV201003, "AdGroupAdError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupAdService::AdGroupAdErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::AdScheduleTarget,
    :schema_type => XSD::QName.new(NsV201003, "AdScheduleTarget"),
    :schema_basetype => XSD::QName.new(NsV201003, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Target.Type")], [0, 1]],
      ["dayOfWeek", "AdWords::V201003::AdGroupAdService::DayOfWeek", [0, 1]],
      ["startHour", "SOAP::SOAPInt", [0, 1]],
      ["startMinute", "AdWords::V201003::AdGroupAdService::MinuteOfHour", [0, 1]],
      ["endHour", "SOAP::SOAPInt", [0, 1]],
      ["endMinute", "AdWords::V201003::AdGroupAdService::MinuteOfHour", [0, 1]],
      ["bidMultiplier", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::AdStats,
    :schema_type => XSD::QName.new(NsV201003, "AdStats"),
    :schema_basetype => XSD::QName.new(NsV201003, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdWords::V201003::AdGroupAdService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdWords::V201003::AdGroupAdService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdWords::V201003::AdGroupAdService::Money", [0, 1]],
      ["averageCpm", "AdWords::V201003::AdGroupAdService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdWords::V201003::AdGroupAdService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdWords::V201003::AdGroupAdService::Money", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Stats.Type")], [0, 1]],
      ["percentServed", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::AdStatsSelector,
    :schema_type => XSD::QName.new(NsV201003, "AdStatsSelector"),
    :schema_basetype => XSD::QName.new(NsV201003, "StatsSelector"),
    :schema_element => [
      ["dateRange", "AdWords::V201003::AdGroupAdService::DateRange", [0, 1]],
      ["statsSelector_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "StatsSelector.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::Address,
    :schema_type => XSD::QName.new(NsV201003, "Address"),
    :schema_element => [
      ["streetAddress", "SOAP::SOAPString", [0, 1]],
      ["streetAddress2", "SOAP::SOAPString", [0, 1]],
      ["cityName", "SOAP::SOAPString", [0, 1]],
      ["provinceCode", "SOAP::SOAPString", [0, 1]],
      ["provinceName", "SOAP::SOAPString", [0, 1]],
      ["postalCode", "SOAP::SOAPString", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::AgeTarget,
    :schema_type => XSD::QName.new(NsV201003, "AgeTarget"),
    :schema_basetype => XSD::QName.new(NsV201003, "DemographicTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Target.Type")], [0, 1]],
      ["bidModifier", "SOAP::SOAPInt", [0, 1]],
      ["age", "AdWords::V201003::AdGroupAdService::AgeTargetAge", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::Audio,
    :schema_type => XSD::QName.new(NsV201003, "Audio"),
    :schema_basetype => XSD::QName.new(NsV201003, "Media"),
    :schema_element => [
      ["mediaId", "SOAP::SOAPLong", [0, 1]],
      ["mediaTypeDb", "AdWords::V201003::AdGroupAdService::MediaMediaType", [0, 1]],
      ["referenceId", "SOAP::SOAPLong", [0, 1]],
      ["dimensions", "AdWords::V201003::AdGroupAdService::Media_Size_DimensionsMapEntry[]", [0, nil]],
      ["urls", "AdWords::V201003::AdGroupAdService::Media_Size_StringMapEntry[]", [0, nil]],
      ["mimeType", "AdWords::V201003::AdGroupAdService::MediaMimeType", [0, 1]],
      ["sourceUrl", "SOAP::SOAPString", [0, 1]],
      ["mediaSubType", "AdWords::V201003::AdGroupAdService::MediaMediaSubType", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["fileSize", "SOAP::SOAPLong", [0, 1]],
      ["extendedCapabilities", "AdWords::V201003::AdGroupAdService::Media_MediaExtendedCapabilityType_Media_MediaExtendedCapabilityStateMapEntry[]", [0, nil]],
      ["creationTime", "SOAP::SOAPString", [0, 1]],
      ["media_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Media.Type")], [0, 1]],
      ["durationMillis", "SOAP::SOAPLong", [0, 1]],
      ["streamingUrl", "SOAP::SOAPString", [0, 1]],
      ["readyToPlayOnTheWeb", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::AuthenticationError,
    :schema_type => XSD::QName.new(NsV201003, "AuthenticationError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupAdService::AuthenticationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::AuthorizationError,
    :schema_type => XSD::QName.new(NsV201003, "AuthorizationError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupAdService::AuthorizationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::CityTarget,
    :schema_type => XSD::QName.new(NsV201003, "CityTarget"),
    :schema_basetype => XSD::QName.new(NsV201003, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["cityName", "SOAP::SOAPString", [0, 1]],
      ["provinceCode", "SOAP::SOAPString", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::ClientTermsError,
    :schema_type => XSD::QName.new(NsV201003, "ClientTermsError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupAdService::ClientTermsErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::CountryTarget,
    :schema_type => XSD::QName.new(NsV201003, "CountryTarget"),
    :schema_basetype => XSD::QName.new(NsV201003, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::DateError,
    :schema_type => XSD::QName.new(NsV201003, "DateError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupAdService::DateErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::DateRange,
    :schema_type => XSD::QName.new(NsV201003, "DateRange"),
    :schema_element => [
      ["min", "SOAP::SOAPString", [0, 1]],
      ["max", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::DeprecatedAd,
    :schema_type => XSD::QName.new(NsV201003, "DeprecatedAd"),
    :schema_basetype => XSD::QName.new(NsV201003, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdWords::V201003::AdGroupAdService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Ad.Type")], [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["type", "AdWords::V201003::AdGroupAdService::DeprecatedAdType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::Dimensions,
    :schema_type => XSD::QName.new(NsV201003, "Dimensions"),
    :schema_element => [
      ["width", "SOAP::SOAPInt", [0, 1]],
      ["height", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::DistinctError,
    :schema_type => XSD::QName.new(NsV201003, "DistinctError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupAdService::DistinctErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::DoubleValue,
    :schema_type => XSD::QName.new(NsV201003, "DoubleValue"),
    :schema_basetype => XSD::QName.new(NsV201003, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::EntityNotFound,
    :schema_type => XSD::QName.new(NsV201003, "EntityNotFound"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupAdService::EntityNotFoundReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::GenderTarget,
    :schema_type => XSD::QName.new(NsV201003, "GenderTarget"),
    :schema_basetype => XSD::QName.new(NsV201003, "DemographicTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Target.Type")], [0, 1]],
      ["bidModifier", "SOAP::SOAPInt", [0, 1]],
      ["gender", "AdWords::V201003::AdGroupAdService::GenderTargetGender", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::GeoPoint,
    :schema_type => XSD::QName.new(NsV201003, "GeoPoint"),
    :schema_element => [
      ["latitudeInMicroDegrees", "SOAP::SOAPInt", [0, 1]],
      ["longitudeInMicroDegrees", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::IdError,
    :schema_type => XSD::QName.new(NsV201003, "IdError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupAdService::IdErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::Image,
    :schema_type => XSD::QName.new(NsV201003, "Image"),
    :schema_basetype => XSD::QName.new(NsV201003, "Media"),
    :schema_element => [
      ["mediaId", "SOAP::SOAPLong", [0, 1]],
      ["mediaTypeDb", "AdWords::V201003::AdGroupAdService::MediaMediaType", [0, 1]],
      ["referenceId", "SOAP::SOAPLong", [0, 1]],
      ["dimensions", "AdWords::V201003::AdGroupAdService::Media_Size_DimensionsMapEntry[]", [0, nil]],
      ["urls", "AdWords::V201003::AdGroupAdService::Media_Size_StringMapEntry[]", [0, nil]],
      ["mimeType", "AdWords::V201003::AdGroupAdService::MediaMimeType", [0, 1]],
      ["sourceUrl", "SOAP::SOAPString", [0, 1]],
      ["mediaSubType", "AdWords::V201003::AdGroupAdService::MediaMediaSubType", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["fileSize", "SOAP::SOAPLong", [0, 1]],
      ["extendedCapabilities", "AdWords::V201003::AdGroupAdService::Media_MediaExtendedCapabilityType_Media_MediaExtendedCapabilityStateMapEntry[]", [0, nil]],
      ["creationTime", "SOAP::SOAPString", [0, 1]],
      ["media_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Media.Type")], [0, 1]],
      ["data", "SOAP::SOAPBase64", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::ImageError,
    :schema_type => XSD::QName.new(NsV201003, "ImageError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupAdService::ImageErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::InternalApiError,
    :schema_type => XSD::QName.new(NsV201003, "InternalApiError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupAdService::InternalApiErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::LanguageTarget,
    :schema_type => XSD::QName.new(NsV201003, "LanguageTarget"),
    :schema_basetype => XSD::QName.new(NsV201003, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Target.Type")], [0, 1]],
      ["languageCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::LongValue,
    :schema_type => XSD::QName.new(NsV201003, "LongValue"),
    :schema_basetype => XSD::QName.new(NsV201003, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::MediaError,
    :schema_type => XSD::QName.new(NsV201003, "MediaError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupAdService::MediaErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::Media_MediaExtendedCapabilityType_Media_MediaExtendedCapabilityStateMapEntry,
    :schema_type => XSD::QName.new(NsV201003, "Media_MediaExtendedCapabilityType_Media_MediaExtendedCapabilityStateMapEntry"),
    :schema_element => [
      ["key", "AdWords::V201003::AdGroupAdService::MediaMediaExtendedCapabilityType", [0, 1]],
      ["value", "AdWords::V201003::AdGroupAdService::MediaMediaExtendedCapabilityState", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::Media_Size_DimensionsMapEntry,
    :schema_type => XSD::QName.new(NsV201003, "Media_Size_DimensionsMapEntry"),
    :schema_element => [
      ["key", "AdWords::V201003::AdGroupAdService::MediaSize", [0, 1]],
      ["value", "AdWords::V201003::AdGroupAdService::Dimensions", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::Media_Size_StringMapEntry,
    :schema_type => XSD::QName.new(NsV201003, "Media_Size_StringMapEntry"),
    :schema_element => [
      ["key", "AdWords::V201003::AdGroupAdService::MediaSize", [0, 1]],
      ["value", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::MetroTarget,
    :schema_type => XSD::QName.new(NsV201003, "MetroTarget"),
    :schema_basetype => XSD::QName.new(NsV201003, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["metroCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::MobileAd,
    :schema_type => XSD::QName.new(NsV201003, "MobileAd"),
    :schema_basetype => XSD::QName.new(NsV201003, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdWords::V201003::AdGroupAdService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Ad.Type")], [0, 1]],
      ["headline", "SOAP::SOAPString", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["markupLanguages", "AdWords::V201003::AdGroupAdService::MarkupLanguageType[]", [0, nil]],
      ["mobileCarriers", "SOAP::SOAPString[]", [0, nil]],
      ["businessName", "SOAP::SOAPString", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]],
      ["phoneNumber", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::MobileCarrierTarget,
    :schema_type => XSD::QName.new(NsV201003, "MobileCarrierTarget"),
    :schema_basetype => XSD::QName.new(NsV201003, "MobileTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Target.Type")], [0, 1]],
      ["carrierName", "SOAP::SOAPString", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::MobilePlatformTarget,
    :schema_type => XSD::QName.new(NsV201003, "MobilePlatformTarget"),
    :schema_basetype => XSD::QName.new(NsV201003, "MobileTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Target.Type")], [0, 1]],
      ["platformName", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::Money,
    :schema_type => XSD::QName.new(NsV201003, "Money"),
    :schema_basetype => XSD::QName.new(NsV201003, "ComparableValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ComparableValue.Type")], [0, 1]],
      ["microAmount", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::NetworkTarget,
    :schema_type => XSD::QName.new(NsV201003, "NetworkTarget"),
    :schema_basetype => XSD::QName.new(NsV201003, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Target.Type")], [0, 1]],
      ["networkCoverageType", "AdWords::V201003::AdGroupAdService::NetworkCoverageType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::NewEntityCreationError,
    :schema_type => XSD::QName.new(NsV201003, "NewEntityCreationError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupAdService::NewEntityCreationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::NotEmptyError,
    :schema_type => XSD::QName.new(NsV201003, "NotEmptyError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupAdService::NotEmptyErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::NotWhitelistedError,
    :schema_type => XSD::QName.new(NsV201003, "NotWhitelistedError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupAdService::NotWhitelistedErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::NullError,
    :schema_type => XSD::QName.new(NsV201003, "NullError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupAdService::NullErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::OperationAccessDenied,
    :schema_type => XSD::QName.new(NsV201003, "OperationAccessDenied"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupAdService::OperationAccessDeniedReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::Paging,
    :schema_type => XSD::QName.new(NsV201003, "Paging"),
    :schema_element => [
      ["startIndex", "SOAP::SOAPInt", [0, 1]],
      ["numberResults", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::PagingError,
    :schema_type => XSD::QName.new(NsV201003, "PagingError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupAdService::PagingErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::PlatformTarget,
    :schema_type => XSD::QName.new(NsV201003, "PlatformTarget"),
    :schema_basetype => XSD::QName.new(NsV201003, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Target.Type")], [0, 1]],
      ["platformType", "AdWords::V201003::AdGroupAdService::PlatformType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::PolicyViolationErrorPart,
    :schema_type => XSD::QName.new(NsV201003, "PolicyViolationError.Part"),
    :schema_element => [
      ["index", "SOAP::SOAPInt", [0, 1]],
      ["length", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::PolicyViolationKey,
    :schema_type => XSD::QName.new(NsV201003, "PolicyViolationKey"),
    :schema_element => [
      ["policyName", "SOAP::SOAPString", [0, 1]],
      ["violatingText", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::PolygonTarget,
    :schema_type => XSD::QName.new(NsV201003, "PolygonTarget"),
    :schema_basetype => XSD::QName.new(NsV201003, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["vertices", "AdWords::V201003::AdGroupAdService::GeoPoint[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::ProvinceTarget,
    :schema_type => XSD::QName.new(NsV201003, "ProvinceTarget"),
    :schema_basetype => XSD::QName.new(NsV201003, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["provinceCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::ProximityTarget,
    :schema_type => XSD::QName.new(NsV201003, "ProximityTarget"),
    :schema_basetype => XSD::QName.new(NsV201003, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["geoPoint", "AdWords::V201003::AdGroupAdService::GeoPoint", [0, 1]],
      ["radiusDistanceUnits", "AdWords::V201003::AdGroupAdService::ProximityTargetDistanceUnits", [0, 1]],
      ["radiusInUnits", "SOAP::SOAPDouble", [0, 1]],
      ["address", "AdWords::V201003::AdGroupAdService::Address", [0, 1]],
      ["allowServiceOfAddress", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::QuotaCheckError,
    :schema_type => XSD::QName.new(NsV201003, "QuotaCheckError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupAdService::QuotaCheckErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::C_RangeError,
    :schema_type => XSD::QName.new(NsV201003, "RangeError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupAdService::RangeErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::RateExceededError,
    :schema_type => XSD::QName.new(NsV201003, "RateExceededError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupAdService::RateExceededErrorReason", [0, 1]],
      ["rateName", "SOAP::SOAPString", [0, 1]],
      ["rateScope", "SOAP::SOAPString", [0, 1]],
      ["retryAfterSeconds", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::ReadOnlyError,
    :schema_type => XSD::QName.new(NsV201003, "ReadOnlyError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupAdService::ReadOnlyErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::RequestError,
    :schema_type => XSD::QName.new(NsV201003, "RequestError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupAdService::RequestErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::RequiredError,
    :schema_type => XSD::QName.new(NsV201003, "RequiredError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupAdService::RequiredErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::SizeLimitError,
    :schema_type => XSD::QName.new(NsV201003, "SizeLimitError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupAdService::SizeLimitErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::SoapHeader,
    :schema_type => XSD::QName.new(NsV201003, "SoapHeader"),
    :schema_element => [
      ["authToken", "SOAP::SOAPString", [0, 1]],
      ["clientCustomerId", "SOAP::SOAPString", [0, 1]],
      ["clientEmail", "SOAP::SOAPString", [0, 1]],
      ["developerToken", "SOAP::SOAPString", [0, 1]],
      ["userAgent", "SOAP::SOAPString", [0, 1]],
      ["validateOnly", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::SoapResponseHeader,
    :schema_type => XSD::QName.new(NsV201003, "SoapResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::StatsQueryError,
    :schema_type => XSD::QName.new(NsV201003, "StatsQueryError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupAdService::StatsQueryErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::StatsSelector,
    :schema_type => XSD::QName.new(NsV201003, "StatsSelector"),
    :schema_element => [
      ["dateRange", "AdWords::V201003::AdGroupAdService::DateRange", [0, 1]],
      ["statsSelector_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "StatsSelector.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::TempAdUnionId,
    :schema_type => XSD::QName.new(NsV201003, "TempAdUnionId"),
    :schema_basetype => XSD::QName.new(NsV201003, "AdUnionId"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adUnionId_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "AdUnionId.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::TextAd,
    :schema_type => XSD::QName.new(NsV201003, "TextAd"),
    :schema_basetype => XSD::QName.new(NsV201003, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdWords::V201003::AdGroupAdService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Ad.Type")], [0, 1]],
      ["headline", "SOAP::SOAPString", [0, 1]],
      ["description1", "SOAP::SOAPString", [0, 1]],
      ["description2", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::ThirdPartyRedirectAd,
    :schema_type => XSD::QName.new(NsV201003, "ThirdPartyRedirectAd"),
    :schema_basetype => XSD::QName.new(NsV201003, "RichMediaAd"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdWords::V201003::AdGroupAdService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Ad.Type")], [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["dimensions", "AdWords::V201003::AdGroupAdService::Dimensions", [0, 1]],
      ["snippet", "SOAP::SOAPString", [0, 1]],
      ["impressionBeaconUrl", "SOAP::SOAPString", [0, 1]],
      ["certifiedVendorFormatId", "SOAP::SOAPLong", [0, 1]],
      ["isCookieTargeted", "SOAP::SOAPBoolean", [0, 1]],
      ["isUserInterestTargeted", "SOAP::SOAPBoolean", [0, 1]],
      ["isTagged", "SOAP::SOAPBoolean", [0, 1]],
      ["videoTypes", "AdWords::V201003::AdGroupAdService::VideoType[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::Video,
    :schema_type => XSD::QName.new(NsV201003, "Video"),
    :schema_basetype => XSD::QName.new(NsV201003, "Media"),
    :schema_element => [
      ["mediaId", "SOAP::SOAPLong", [0, 1]],
      ["mediaTypeDb", "AdWords::V201003::AdGroupAdService::MediaMediaType", [0, 1]],
      ["referenceId", "SOAP::SOAPLong", [0, 1]],
      ["dimensions", "AdWords::V201003::AdGroupAdService::Media_Size_DimensionsMapEntry[]", [0, nil]],
      ["urls", "AdWords::V201003::AdGroupAdService::Media_Size_StringMapEntry[]", [0, nil]],
      ["mimeType", "AdWords::V201003::AdGroupAdService::MediaMimeType", [0, 1]],
      ["sourceUrl", "SOAP::SOAPString", [0, 1]],
      ["mediaSubType", "AdWords::V201003::AdGroupAdService::MediaMediaSubType", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["fileSize", "SOAP::SOAPLong", [0, 1]],
      ["extendedCapabilities", "AdWords::V201003::AdGroupAdService::Media_MediaExtendedCapabilityType_Media_MediaExtendedCapabilityStateMapEntry[]", [0, nil]],
      ["creationTime", "SOAP::SOAPString", [0, 1]],
      ["media_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Media.Type")], [0, 1]],
      ["durationMillis", "SOAP::SOAPLong", [0, 1]],
      ["streamingUrl", "SOAP::SOAPString", [0, 1]],
      ["readyToPlayOnTheWeb", "SOAP::SOAPBoolean", [0, 1]],
      ["industryStandardCommercialIdentifier", "SOAP::SOAPString", [0, 1]],
      ["advertisingId", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::AdUnionId,
    :schema_type => XSD::QName.new(NsV201003, "AdUnionId"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adUnionId_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "AdUnionId.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::DatabaseError,
    :schema_type => XSD::QName.new(NsV201003, "DatabaseError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupAdService::DatabaseErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::ExemptionRequest,
    :schema_type => XSD::QName.new(NsV201003, "ExemptionRequest"),
    :schema_element => [
      ["key", "AdWords::V201003::AdGroupAdService::PolicyViolationKey", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::Media,
    :schema_type => XSD::QName.new(NsV201003, "Media"),
    :schema_element => [
      ["mediaId", "SOAP::SOAPLong", [0, 1]],
      ["mediaTypeDb", "AdWords::V201003::AdGroupAdService::MediaMediaType", [0, 1]],
      ["referenceId", "SOAP::SOAPLong", [0, 1]],
      ["dimensions", "AdWords::V201003::AdGroupAdService::Media_Size_DimensionsMapEntry[]", [0, nil]],
      ["urls", "AdWords::V201003::AdGroupAdService::Media_Size_StringMapEntry[]", [0, nil]],
      ["mimeType", "AdWords::V201003::AdGroupAdService::MediaMimeType", [0, 1]],
      ["sourceUrl", "SOAP::SOAPString", [0, 1]],
      ["mediaSubType", "AdWords::V201003::AdGroupAdService::MediaMediaSubType", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["fileSize", "SOAP::SOAPLong", [0, 1]],
      ["extendedCapabilities", "AdWords::V201003::AdGroupAdService::Media_MediaExtendedCapabilityType_Media_MediaExtendedCapabilityStateMapEntry[]", [0, nil]],
      ["creationTime", "SOAP::SOAPString", [0, 1]],
      ["media_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Media.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::MobileImageAd,
    :schema_type => XSD::QName.new(NsV201003, "MobileImageAd"),
    :schema_basetype => XSD::QName.new(NsV201003, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdWords::V201003::AdGroupAdService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Ad.Type")], [0, 1]],
      ["markupLanguages", "AdWords::V201003::AdGroupAdService::MarkupLanguageType[]", [0, nil]],
      ["mobileCarriers", "SOAP::SOAPString[]", [0, nil]],
      ["image", "AdWords::V201003::AdGroupAdService::Image", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::PolicyViolationError,
    :schema_type => XSD::QName.new(NsV201003, "PolicyViolationError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["key", "AdWords::V201003::AdGroupAdService::PolicyViolationKey", [0, 1]],
      ["externalPolicyName", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyUrl", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyDescription", "SOAP::SOAPString", [0, 1]],
      ["isExemptable", "SOAP::SOAPBoolean", [0, 1]],
      ["violatingParts", "AdWords::V201003::AdGroupAdService::PolicyViolationErrorPart[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::Stats,
    :schema_type => XSD::QName.new(NsV201003, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdWords::V201003::AdGroupAdService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdWords::V201003::AdGroupAdService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdWords::V201003::AdGroupAdService::Money", [0, 1]],
      ["averageCpm", "AdWords::V201003::AdGroupAdService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdWords::V201003::AdGroupAdService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdWords::V201003::AdGroupAdService::Money", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Stats.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::TemplateElementField,
    :schema_type => XSD::QName.new(NsV201003, "TemplateElementField"),
    :schema_element => [
      ["name", "SOAP::SOAPString", [0, 1]],
      ["type", "AdWords::V201003::AdGroupAdService::TemplateElementFieldType", [0, 1]],
      ["fieldText", "SOAP::SOAPString", [0, 1]],
      ["fieldMedia", "AdWords::V201003::AdGroupAdService::Media", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::ApiException,
    :schema_type => XSD::QName.new(NsV201003, "ApiException"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdWords::V201003::AdGroupAdService::ApiError[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::ApplicationException,
    :schema_type => XSD::QName.new(NsV201003, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApplicationException.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::ImageAd,
    :schema_type => XSD::QName.new(NsV201003, "ImageAd"),
    :schema_basetype => XSD::QName.new(NsV201003, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdWords::V201003::AdGroupAdService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Ad.Type")], [0, 1]],
      ["image", "AdWords::V201003::AdGroupAdService::Image", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::LocalBusinessAd,
    :schema_type => XSD::QName.new(NsV201003, "LocalBusinessAd"),
    :schema_basetype => XSD::QName.new(NsV201003, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdWords::V201003::AdGroupAdService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Ad.Type")], [0, 1]],
      ["fullBusinessName", "SOAP::SOAPString", [0, 1]],
      ["phoneNumber", "SOAP::SOAPString", [0, 1]],
      ["streetAddress", "SOAP::SOAPString", [0, 1]],
      ["city", "SOAP::SOAPString", [0, 1]],
      ["region", "SOAP::SOAPString", [0, 1]],
      ["regionCode", "SOAP::SOAPString", [0, 1]],
      ["postalCode", "SOAP::SOAPString", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]],
      ["businessName", "SOAP::SOAPString", [0, 1]],
      ["description1", "SOAP::SOAPString", [0, 1]],
      ["description2", "SOAP::SOAPString", [0, 1]],
      ["target", "AdWords::V201003::AdGroupAdService::ProximityTarget", [0, 1]],
      ["businessImage", "AdWords::V201003::AdGroupAdService::Image", [0, 1]],
      ["icon", "AdWords::V201003::AdGroupAdService::Image", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::TemplateElement,
    :schema_type => XSD::QName.new(NsV201003, "TemplateElement"),
    :schema_element => [
      ["uniqueName", "SOAP::SOAPString", [0, 1]],
      ["fields", "AdWords::V201003::AdGroupAdService::TemplateElementField[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::AdGroupAdSelector,
    :schema_type => XSD::QName.new(NsV201003, "AdGroupAdSelector"),
    :schema_element => [
      ["campaignIds", "SOAP::SOAPLong[]", [0, nil]],
      ["adGroupIds", "SOAP::SOAPLong[]", [0, nil]],
      ["adIds", "SOAP::SOAPLong[]", [0, nil]],
      ["statuses", "AdWords::V201003::AdGroupAdService::AdGroupAdStatus[]", [0, nil]],
      ["statsSelector", "AdWords::V201003::AdGroupAdService::AdStatsSelector", [0, 1]],
      ["paging", "AdWords::V201003::AdGroupAdService::Paging", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::TemplateAd,
    :schema_type => XSD::QName.new(NsV201003, "TemplateAd"),
    :schema_basetype => XSD::QName.new(NsV201003, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdWords::V201003::AdGroupAdService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Ad.Type")], [0, 1]],
      ["templateId", "SOAP::SOAPLong", [0, 1]],
      ["adUnionId", "AdWords::V201003::AdGroupAdService::AdUnionId", [0, 1]],
      ["templateElements", "AdWords::V201003::AdGroupAdService::TemplateElement[]", [0, nil]],
      ["dimensions", "AdWords::V201003::AdGroupAdService::Dimensions", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["duration", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::Ad,
    :schema_type => XSD::QName.new(NsV201003, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdWords::V201003::AdGroupAdService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Ad.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::AdGroupAd,
    :schema_type => XSD::QName.new(NsV201003, "AdGroupAd"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["ad", "AdWords::V201003::AdGroupAdService::Ad", [0, 1]],
      ["status", "AdWords::V201003::AdGroupAdService::AdGroupAdStatus", [0, 1]],
      ["stats", "AdWords::V201003::AdGroupAdService::AdStats", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::AdGroupAdOperation,
    :schema_type => XSD::QName.new(NsV201003, "AdGroupAdOperation"),
    :schema_basetype => XSD::QName.new(NsV201003, "Operation"),
    :schema_element => [
      ["operator", "AdWords::V201003::AdGroupAdService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Operation.Type")], [0, 1]],
      ["operand", "AdWords::V201003::AdGroupAdService::AdGroupAd", [0, 1]],
      ["exemptionRequests", "AdWords::V201003::AdGroupAdService::ExemptionRequest[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::AdGroupAdPage,
    :schema_type => XSD::QName.new(NsV201003, "AdGroupAdPage"),
    :schema_basetype => XSD::QName.new(NsV201003, "Page"),
    :schema_element => [
      ["totalNumEntries", "SOAP::SOAPInt", [0, 1]],
      ["page_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Page.Type")], [0, 1]],
      ["entries", "AdWords::V201003::AdGroupAdService::AdGroupAd[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::AdGroupAdReturnValue,
    :schema_type => XSD::QName.new(NsV201003, "AdGroupAdReturnValue"),
    :schema_basetype => XSD::QName.new(NsV201003, "ListReturnValue"),
    :schema_element => [
      ["listReturnValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ListReturnValue.Type")], [0, 1]],
      ["value", "AdWords::V201003::AdGroupAdService::AdGroupAd[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::AdApprovalStatus,
    :schema_type => XSD::QName.new(NsV201003, "Ad.ApprovalStatus")
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::AdErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "AdError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::AdGroupAdStatus,
    :schema_type => XSD::QName.new(NsV201003, "AdGroupAd.Status")
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::AdGroupAdErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "AdGroupAdError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::AgeTargetAge,
    :schema_type => XSD::QName.new(NsV201003, "AgeTarget.Age")
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::AuthenticationErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "AuthenticationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::AuthorizationErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "AuthorizationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::ClientTermsErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "ClientTermsError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::DatabaseErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "DatabaseError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::DateErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "DateError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::DayOfWeek,
    :schema_type => XSD::QName.new(NsV201003, "DayOfWeek")
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::DeprecatedAdType,
    :schema_type => XSD::QName.new(NsV201003, "DeprecatedAd.Type")
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::DistinctErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "DistinctError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::EntityCountLimitExceededReason,
    :schema_type => XSD::QName.new(NsV201003, "EntityCountLimitExceeded.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::EntityNotFoundReason,
    :schema_type => XSD::QName.new(NsV201003, "EntityNotFound.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::GenderTargetGender,
    :schema_type => XSD::QName.new(NsV201003, "GenderTarget.Gender")
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::IdErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "IdError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::ImageErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "ImageError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::InternalApiErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "InternalApiError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::MarkupLanguageType,
    :schema_type => XSD::QName.new(NsV201003, "MarkupLanguageType")
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::MediaMediaExtendedCapabilityState,
    :schema_type => XSD::QName.new(NsV201003, "Media.MediaExtendedCapabilityState")
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::MediaMediaExtendedCapabilityType,
    :schema_type => XSD::QName.new(NsV201003, "Media.MediaExtendedCapabilityType")
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::MediaMediaSubType,
    :schema_type => XSD::QName.new(NsV201003, "Media.MediaSubType")
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::MediaMediaType,
    :schema_type => XSD::QName.new(NsV201003, "Media.MediaType")
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::MediaMimeType,
    :schema_type => XSD::QName.new(NsV201003, "Media.MimeType")
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::MediaSize,
    :schema_type => XSD::QName.new(NsV201003, "Media.Size")
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::MediaErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "MediaError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::MinuteOfHour,
    :schema_type => XSD::QName.new(NsV201003, "MinuteOfHour")
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::NetworkCoverageType,
    :schema_type => XSD::QName.new(NsV201003, "NetworkCoverageType")
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::NewEntityCreationErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "NewEntityCreationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::NotEmptyErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "NotEmptyError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::NotWhitelistedErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "NotWhitelistedError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::NullErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "NullError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::OperationAccessDeniedReason,
    :schema_type => XSD::QName.new(NsV201003, "OperationAccessDenied.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::Operator,
    :schema_type => XSD::QName.new(NsV201003, "Operator")
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::PagingErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "PagingError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::PlatformType,
    :schema_type => XSD::QName.new(NsV201003, "PlatformType")
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::ProximityTargetDistanceUnits,
    :schema_type => XSD::QName.new(NsV201003, "ProximityTarget.DistanceUnits")
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::QuotaCheckErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "QuotaCheckError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::RangeErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "RangeError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::RateExceededErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "RateExceededError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::ReadOnlyErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "ReadOnlyError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::RequestErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "RequestError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::RequiredErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "RequiredError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::SizeLimitErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "SizeLimitError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::StatsNetwork,
    :schema_type => XSD::QName.new(NsV201003, "Stats.Network")
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::StatsQueryErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "StatsQueryError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::TemplateElementFieldType,
    :schema_type => XSD::QName.new(NsV201003, "TemplateElementField.Type")
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::VideoType,
    :schema_type => XSD::QName.new(NsV201003, "VideoType")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::AdError,
    :schema_type => XSD::QName.new(NsV201003, "AdError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupAdService::AdErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::AdExtensionOverrideStats,
    :schema_type => XSD::QName.new(NsV201003, "AdExtensionOverrideStats"),
    :schema_basetype => XSD::QName.new(NsV201003, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdWords::V201003::AdGroupAdService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdWords::V201003::AdGroupAdService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdWords::V201003::AdGroupAdService::Money", [0, 1]],
      ["averageCpm", "AdWords::V201003::AdGroupAdService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdWords::V201003::AdGroupAdService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdWords::V201003::AdGroupAdService::Money", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Stats.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::AdGroupAdCountLimitExceeded,
    :schema_type => XSD::QName.new(NsV201003, "AdGroupAdCountLimitExceeded"),
    :schema_basetype => XSD::QName.new(NsV201003, "EntityCountLimitExceeded"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupAdService::EntityCountLimitExceededReason", [0, 1]],
      ["enclosingId", "SOAP::SOAPString", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::AdGroupAdError,
    :schema_type => XSD::QName.new(NsV201003, "AdGroupAdError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupAdService::AdGroupAdErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::AdScheduleTarget,
    :schema_type => XSD::QName.new(NsV201003, "AdScheduleTarget"),
    :schema_basetype => XSD::QName.new(NsV201003, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Target.Type")], [0, 1]],
      ["dayOfWeek", "AdWords::V201003::AdGroupAdService::DayOfWeek", [0, 1]],
      ["startHour", "SOAP::SOAPInt", [0, 1]],
      ["startMinute", "AdWords::V201003::AdGroupAdService::MinuteOfHour", [0, 1]],
      ["endHour", "SOAP::SOAPInt", [0, 1]],
      ["endMinute", "AdWords::V201003::AdGroupAdService::MinuteOfHour", [0, 1]],
      ["bidMultiplier", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::AdStats,
    :schema_type => XSD::QName.new(NsV201003, "AdStats"),
    :schema_basetype => XSD::QName.new(NsV201003, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdWords::V201003::AdGroupAdService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdWords::V201003::AdGroupAdService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdWords::V201003::AdGroupAdService::Money", [0, 1]],
      ["averageCpm", "AdWords::V201003::AdGroupAdService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdWords::V201003::AdGroupAdService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdWords::V201003::AdGroupAdService::Money", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Stats.Type")], [0, 1]],
      ["percentServed", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::AdStatsSelector,
    :schema_type => XSD::QName.new(NsV201003, "AdStatsSelector"),
    :schema_basetype => XSD::QName.new(NsV201003, "StatsSelector"),
    :schema_element => [
      ["dateRange", "AdWords::V201003::AdGroupAdService::DateRange", [0, 1]],
      ["statsSelector_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "StatsSelector.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::Address,
    :schema_type => XSD::QName.new(NsV201003, "Address"),
    :schema_element => [
      ["streetAddress", "SOAP::SOAPString", [0, 1]],
      ["streetAddress2", "SOAP::SOAPString", [0, 1]],
      ["cityName", "SOAP::SOAPString", [0, 1]],
      ["provinceCode", "SOAP::SOAPString", [0, 1]],
      ["provinceName", "SOAP::SOAPString", [0, 1]],
      ["postalCode", "SOAP::SOAPString", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::AgeTarget,
    :schema_type => XSD::QName.new(NsV201003, "AgeTarget"),
    :schema_basetype => XSD::QName.new(NsV201003, "DemographicTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Target.Type")], [0, 1]],
      ["bidModifier", "SOAP::SOAPInt", [0, 1]],
      ["age", "AdWords::V201003::AdGroupAdService::AgeTargetAge", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::Audio,
    :schema_type => XSD::QName.new(NsV201003, "Audio"),
    :schema_basetype => XSD::QName.new(NsV201003, "Media"),
    :schema_element => [
      ["mediaId", "SOAP::SOAPLong", [0, 1]],
      ["mediaTypeDb", "AdWords::V201003::AdGroupAdService::MediaMediaType", [0, 1]],
      ["referenceId", "SOAP::SOAPLong", [0, 1]],
      ["dimensions", "AdWords::V201003::AdGroupAdService::Media_Size_DimensionsMapEntry[]", [0, nil]],
      ["urls", "AdWords::V201003::AdGroupAdService::Media_Size_StringMapEntry[]", [0, nil]],
      ["mimeType", "AdWords::V201003::AdGroupAdService::MediaMimeType", [0, 1]],
      ["sourceUrl", "SOAP::SOAPString", [0, 1]],
      ["mediaSubType", "AdWords::V201003::AdGroupAdService::MediaMediaSubType", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["fileSize", "SOAP::SOAPLong", [0, 1]],
      ["extendedCapabilities", "AdWords::V201003::AdGroupAdService::Media_MediaExtendedCapabilityType_Media_MediaExtendedCapabilityStateMapEntry[]", [0, nil]],
      ["creationTime", "SOAP::SOAPString", [0, 1]],
      ["media_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Media.Type")], [0, 1]],
      ["durationMillis", "SOAP::SOAPLong", [0, 1]],
      ["streamingUrl", "SOAP::SOAPString", [0, 1]],
      ["readyToPlayOnTheWeb", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::AuthenticationError,
    :schema_type => XSD::QName.new(NsV201003, "AuthenticationError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupAdService::AuthenticationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::AuthorizationError,
    :schema_type => XSD::QName.new(NsV201003, "AuthorizationError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupAdService::AuthorizationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::CityTarget,
    :schema_type => XSD::QName.new(NsV201003, "CityTarget"),
    :schema_basetype => XSD::QName.new(NsV201003, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["cityName", "SOAP::SOAPString", [0, 1]],
      ["provinceCode", "SOAP::SOAPString", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::ClientTermsError,
    :schema_type => XSD::QName.new(NsV201003, "ClientTermsError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupAdService::ClientTermsErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::CountryTarget,
    :schema_type => XSD::QName.new(NsV201003, "CountryTarget"),
    :schema_basetype => XSD::QName.new(NsV201003, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::DateError,
    :schema_type => XSD::QName.new(NsV201003, "DateError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupAdService::DateErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::DateRange,
    :schema_type => XSD::QName.new(NsV201003, "DateRange"),
    :schema_element => [
      ["min", "SOAP::SOAPString", [0, 1]],
      ["max", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::DeprecatedAd,
    :schema_type => XSD::QName.new(NsV201003, "DeprecatedAd"),
    :schema_basetype => XSD::QName.new(NsV201003, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdWords::V201003::AdGroupAdService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Ad.Type")], [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["type", "AdWords::V201003::AdGroupAdService::DeprecatedAdType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::Dimensions,
    :schema_type => XSD::QName.new(NsV201003, "Dimensions"),
    :schema_element => [
      ["width", "SOAP::SOAPInt", [0, 1]],
      ["height", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::DistinctError,
    :schema_type => XSD::QName.new(NsV201003, "DistinctError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupAdService::DistinctErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::DoubleValue,
    :schema_type => XSD::QName.new(NsV201003, "DoubleValue"),
    :schema_basetype => XSD::QName.new(NsV201003, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::EntityNotFound,
    :schema_type => XSD::QName.new(NsV201003, "EntityNotFound"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupAdService::EntityNotFoundReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::GenderTarget,
    :schema_type => XSD::QName.new(NsV201003, "GenderTarget"),
    :schema_basetype => XSD::QName.new(NsV201003, "DemographicTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Target.Type")], [0, 1]],
      ["bidModifier", "SOAP::SOAPInt", [0, 1]],
      ["gender", "AdWords::V201003::AdGroupAdService::GenderTargetGender", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::GeoPoint,
    :schema_type => XSD::QName.new(NsV201003, "GeoPoint"),
    :schema_element => [
      ["latitudeInMicroDegrees", "SOAP::SOAPInt", [0, 1]],
      ["longitudeInMicroDegrees", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::IdError,
    :schema_type => XSD::QName.new(NsV201003, "IdError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupAdService::IdErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::Image,
    :schema_type => XSD::QName.new(NsV201003, "Image"),
    :schema_basetype => XSD::QName.new(NsV201003, "Media"),
    :schema_element => [
      ["mediaId", "SOAP::SOAPLong", [0, 1]],
      ["mediaTypeDb", "AdWords::V201003::AdGroupAdService::MediaMediaType", [0, 1]],
      ["referenceId", "SOAP::SOAPLong", [0, 1]],
      ["dimensions", "AdWords::V201003::AdGroupAdService::Media_Size_DimensionsMapEntry[]", [0, nil]],
      ["urls", "AdWords::V201003::AdGroupAdService::Media_Size_StringMapEntry[]", [0, nil]],
      ["mimeType", "AdWords::V201003::AdGroupAdService::MediaMimeType", [0, 1]],
      ["sourceUrl", "SOAP::SOAPString", [0, 1]],
      ["mediaSubType", "AdWords::V201003::AdGroupAdService::MediaMediaSubType", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["fileSize", "SOAP::SOAPLong", [0, 1]],
      ["extendedCapabilities", "AdWords::V201003::AdGroupAdService::Media_MediaExtendedCapabilityType_Media_MediaExtendedCapabilityStateMapEntry[]", [0, nil]],
      ["creationTime", "SOAP::SOAPString", [0, 1]],
      ["media_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Media.Type")], [0, 1]],
      ["data", "SOAP::SOAPBase64", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::ImageError,
    :schema_type => XSD::QName.new(NsV201003, "ImageError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupAdService::ImageErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::InternalApiError,
    :schema_type => XSD::QName.new(NsV201003, "InternalApiError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupAdService::InternalApiErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::LanguageTarget,
    :schema_type => XSD::QName.new(NsV201003, "LanguageTarget"),
    :schema_basetype => XSD::QName.new(NsV201003, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Target.Type")], [0, 1]],
      ["languageCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::LongValue,
    :schema_type => XSD::QName.new(NsV201003, "LongValue"),
    :schema_basetype => XSD::QName.new(NsV201003, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::MediaError,
    :schema_type => XSD::QName.new(NsV201003, "MediaError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupAdService::MediaErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::Media_MediaExtendedCapabilityType_Media_MediaExtendedCapabilityStateMapEntry,
    :schema_type => XSD::QName.new(NsV201003, "Media_MediaExtendedCapabilityType_Media_MediaExtendedCapabilityStateMapEntry"),
    :schema_element => [
      ["key", "AdWords::V201003::AdGroupAdService::MediaMediaExtendedCapabilityType", [0, 1]],
      ["value", "AdWords::V201003::AdGroupAdService::MediaMediaExtendedCapabilityState", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::Media_Size_DimensionsMapEntry,
    :schema_type => XSD::QName.new(NsV201003, "Media_Size_DimensionsMapEntry"),
    :schema_element => [
      ["key", "AdWords::V201003::AdGroupAdService::MediaSize", [0, 1]],
      ["value", "AdWords::V201003::AdGroupAdService::Dimensions", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::Media_Size_StringMapEntry,
    :schema_type => XSD::QName.new(NsV201003, "Media_Size_StringMapEntry"),
    :schema_element => [
      ["key", "AdWords::V201003::AdGroupAdService::MediaSize", [0, 1]],
      ["value", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::MetroTarget,
    :schema_type => XSD::QName.new(NsV201003, "MetroTarget"),
    :schema_basetype => XSD::QName.new(NsV201003, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["metroCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::MobileAd,
    :schema_type => XSD::QName.new(NsV201003, "MobileAd"),
    :schema_basetype => XSD::QName.new(NsV201003, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdWords::V201003::AdGroupAdService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Ad.Type")], [0, 1]],
      ["headline", "SOAP::SOAPString", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["markupLanguages", "AdWords::V201003::AdGroupAdService::MarkupLanguageType[]", [0, nil]],
      ["mobileCarriers", "SOAP::SOAPString[]", [0, nil]],
      ["businessName", "SOAP::SOAPString", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]],
      ["phoneNumber", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::MobileCarrierTarget,
    :schema_type => XSD::QName.new(NsV201003, "MobileCarrierTarget"),
    :schema_basetype => XSD::QName.new(NsV201003, "MobileTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Target.Type")], [0, 1]],
      ["carrierName", "SOAP::SOAPString", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::MobilePlatformTarget,
    :schema_type => XSD::QName.new(NsV201003, "MobilePlatformTarget"),
    :schema_basetype => XSD::QName.new(NsV201003, "MobileTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Target.Type")], [0, 1]],
      ["platformName", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::Money,
    :schema_type => XSD::QName.new(NsV201003, "Money"),
    :schema_basetype => XSD::QName.new(NsV201003, "ComparableValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ComparableValue.Type")], [0, 1]],
      ["microAmount", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::NetworkTarget,
    :schema_type => XSD::QName.new(NsV201003, "NetworkTarget"),
    :schema_basetype => XSD::QName.new(NsV201003, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Target.Type")], [0, 1]],
      ["networkCoverageType", "AdWords::V201003::AdGroupAdService::NetworkCoverageType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::NewEntityCreationError,
    :schema_type => XSD::QName.new(NsV201003, "NewEntityCreationError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupAdService::NewEntityCreationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::NotEmptyError,
    :schema_type => XSD::QName.new(NsV201003, "NotEmptyError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupAdService::NotEmptyErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::NotWhitelistedError,
    :schema_type => XSD::QName.new(NsV201003, "NotWhitelistedError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupAdService::NotWhitelistedErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::NullError,
    :schema_type => XSD::QName.new(NsV201003, "NullError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupAdService::NullErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::OperationAccessDenied,
    :schema_type => XSD::QName.new(NsV201003, "OperationAccessDenied"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupAdService::OperationAccessDeniedReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::Paging,
    :schema_type => XSD::QName.new(NsV201003, "Paging"),
    :schema_element => [
      ["startIndex", "SOAP::SOAPInt", [0, 1]],
      ["numberResults", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::PagingError,
    :schema_type => XSD::QName.new(NsV201003, "PagingError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupAdService::PagingErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::PlatformTarget,
    :schema_type => XSD::QName.new(NsV201003, "PlatformTarget"),
    :schema_basetype => XSD::QName.new(NsV201003, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Target.Type")], [0, 1]],
      ["platformType", "AdWords::V201003::AdGroupAdService::PlatformType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::PolicyViolationErrorPart,
    :schema_type => XSD::QName.new(NsV201003, "PolicyViolationError.Part"),
    :schema_element => [
      ["index", "SOAP::SOAPInt", [0, 1]],
      ["length", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::PolicyViolationKey,
    :schema_type => XSD::QName.new(NsV201003, "PolicyViolationKey"),
    :schema_element => [
      ["policyName", "SOAP::SOAPString", [0, 1]],
      ["violatingText", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::PolygonTarget,
    :schema_type => XSD::QName.new(NsV201003, "PolygonTarget"),
    :schema_basetype => XSD::QName.new(NsV201003, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["vertices", "AdWords::V201003::AdGroupAdService::GeoPoint[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::ProvinceTarget,
    :schema_type => XSD::QName.new(NsV201003, "ProvinceTarget"),
    :schema_basetype => XSD::QName.new(NsV201003, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["provinceCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::ProximityTarget,
    :schema_type => XSD::QName.new(NsV201003, "ProximityTarget"),
    :schema_basetype => XSD::QName.new(NsV201003, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["geoPoint", "AdWords::V201003::AdGroupAdService::GeoPoint", [0, 1]],
      ["radiusDistanceUnits", "AdWords::V201003::AdGroupAdService::ProximityTargetDistanceUnits", [0, 1]],
      ["radiusInUnits", "SOAP::SOAPDouble", [0, 1]],
      ["address", "AdWords::V201003::AdGroupAdService::Address", [0, 1]],
      ["allowServiceOfAddress", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::QuotaCheckError,
    :schema_type => XSD::QName.new(NsV201003, "QuotaCheckError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupAdService::QuotaCheckErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::C_RangeError,
    :schema_type => XSD::QName.new(NsV201003, "RangeError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupAdService::RangeErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::RateExceededError,
    :schema_type => XSD::QName.new(NsV201003, "RateExceededError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupAdService::RateExceededErrorReason", [0, 1]],
      ["rateName", "SOAP::SOAPString", [0, 1]],
      ["rateScope", "SOAP::SOAPString", [0, 1]],
      ["retryAfterSeconds", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::ReadOnlyError,
    :schema_type => XSD::QName.new(NsV201003, "ReadOnlyError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupAdService::ReadOnlyErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::RequestError,
    :schema_type => XSD::QName.new(NsV201003, "RequestError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupAdService::RequestErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::RequiredError,
    :schema_type => XSD::QName.new(NsV201003, "RequiredError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupAdService::RequiredErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::SizeLimitError,
    :schema_type => XSD::QName.new(NsV201003, "SizeLimitError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupAdService::SizeLimitErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::SoapHeader,
    :schema_type => XSD::QName.new(NsV201003, "SoapHeader"),
    :schema_element => [
      ["authToken", "SOAP::SOAPString", [0, 1]],
      ["clientCustomerId", "SOAP::SOAPString", [0, 1]],
      ["clientEmail", "SOAP::SOAPString", [0, 1]],
      ["developerToken", "SOAP::SOAPString", [0, 1]],
      ["userAgent", "SOAP::SOAPString", [0, 1]],
      ["validateOnly", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::SoapResponseHeader,
    :schema_type => XSD::QName.new(NsV201003, "SoapResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::StatsQueryError,
    :schema_type => XSD::QName.new(NsV201003, "StatsQueryError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupAdService::StatsQueryErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::StatsSelector,
    :schema_type => XSD::QName.new(NsV201003, "StatsSelector"),
    :schema_element => [
      ["dateRange", "AdWords::V201003::AdGroupAdService::DateRange", [0, 1]],
      ["statsSelector_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "StatsSelector.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::TempAdUnionId,
    :schema_type => XSD::QName.new(NsV201003, "TempAdUnionId"),
    :schema_basetype => XSD::QName.new(NsV201003, "AdUnionId"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adUnionId_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "AdUnionId.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::TextAd,
    :schema_type => XSD::QName.new(NsV201003, "TextAd"),
    :schema_basetype => XSD::QName.new(NsV201003, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdWords::V201003::AdGroupAdService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Ad.Type")], [0, 1]],
      ["headline", "SOAP::SOAPString", [0, 1]],
      ["description1", "SOAP::SOAPString", [0, 1]],
      ["description2", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::ThirdPartyRedirectAd,
    :schema_type => XSD::QName.new(NsV201003, "ThirdPartyRedirectAd"),
    :schema_basetype => XSD::QName.new(NsV201003, "RichMediaAd"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdWords::V201003::AdGroupAdService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Ad.Type")], [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["dimensions", "AdWords::V201003::AdGroupAdService::Dimensions", [0, 1]],
      ["snippet", "SOAP::SOAPString", [0, 1]],
      ["impressionBeaconUrl", "SOAP::SOAPString", [0, 1]],
      ["certifiedVendorFormatId", "SOAP::SOAPLong", [0, 1]],
      ["isCookieTargeted", "SOAP::SOAPBoolean", [0, 1]],
      ["isUserInterestTargeted", "SOAP::SOAPBoolean", [0, 1]],
      ["isTagged", "SOAP::SOAPBoolean", [0, 1]],
      ["videoTypes", "AdWords::V201003::AdGroupAdService::VideoType[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::Video,
    :schema_type => XSD::QName.new(NsV201003, "Video"),
    :schema_basetype => XSD::QName.new(NsV201003, "Media"),
    :schema_element => [
      ["mediaId", "SOAP::SOAPLong", [0, 1]],
      ["mediaTypeDb", "AdWords::V201003::AdGroupAdService::MediaMediaType", [0, 1]],
      ["referenceId", "SOAP::SOAPLong", [0, 1]],
      ["dimensions", "AdWords::V201003::AdGroupAdService::Media_Size_DimensionsMapEntry[]", [0, nil]],
      ["urls", "AdWords::V201003::AdGroupAdService::Media_Size_StringMapEntry[]", [0, nil]],
      ["mimeType", "AdWords::V201003::AdGroupAdService::MediaMimeType", [0, 1]],
      ["sourceUrl", "SOAP::SOAPString", [0, 1]],
      ["mediaSubType", "AdWords::V201003::AdGroupAdService::MediaMediaSubType", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["fileSize", "SOAP::SOAPLong", [0, 1]],
      ["extendedCapabilities", "AdWords::V201003::AdGroupAdService::Media_MediaExtendedCapabilityType_Media_MediaExtendedCapabilityStateMapEntry[]", [0, nil]],
      ["creationTime", "SOAP::SOAPString", [0, 1]],
      ["media_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Media.Type")], [0, 1]],
      ["durationMillis", "SOAP::SOAPLong", [0, 1]],
      ["streamingUrl", "SOAP::SOAPString", [0, 1]],
      ["readyToPlayOnTheWeb", "SOAP::SOAPBoolean", [0, 1]],
      ["industryStandardCommercialIdentifier", "SOAP::SOAPString", [0, 1]],
      ["advertisingId", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::AdUnionId,
    :schema_type => XSD::QName.new(NsV201003, "AdUnionId"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adUnionId_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "AdUnionId.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::DatabaseError,
    :schema_type => XSD::QName.new(NsV201003, "DatabaseError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupAdService::DatabaseErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::ExemptionRequest,
    :schema_type => XSD::QName.new(NsV201003, "ExemptionRequest"),
    :schema_element => [
      ["key", "AdWords::V201003::AdGroupAdService::PolicyViolationKey", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::Media,
    :schema_type => XSD::QName.new(NsV201003, "Media"),
    :schema_element => [
      ["mediaId", "SOAP::SOAPLong", [0, 1]],
      ["mediaTypeDb", "AdWords::V201003::AdGroupAdService::MediaMediaType", [0, 1]],
      ["referenceId", "SOAP::SOAPLong", [0, 1]],
      ["dimensions", "AdWords::V201003::AdGroupAdService::Media_Size_DimensionsMapEntry[]", [0, nil]],
      ["urls", "AdWords::V201003::AdGroupAdService::Media_Size_StringMapEntry[]", [0, nil]],
      ["mimeType", "AdWords::V201003::AdGroupAdService::MediaMimeType", [0, 1]],
      ["sourceUrl", "SOAP::SOAPString", [0, 1]],
      ["mediaSubType", "AdWords::V201003::AdGroupAdService::MediaMediaSubType", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["fileSize", "SOAP::SOAPLong", [0, 1]],
      ["extendedCapabilities", "AdWords::V201003::AdGroupAdService::Media_MediaExtendedCapabilityType_Media_MediaExtendedCapabilityStateMapEntry[]", [0, nil]],
      ["creationTime", "SOAP::SOAPString", [0, 1]],
      ["media_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Media.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::MobileImageAd,
    :schema_type => XSD::QName.new(NsV201003, "MobileImageAd"),
    :schema_basetype => XSD::QName.new(NsV201003, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdWords::V201003::AdGroupAdService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Ad.Type")], [0, 1]],
      ["markupLanguages", "AdWords::V201003::AdGroupAdService::MarkupLanguageType[]", [0, nil]],
      ["mobileCarriers", "SOAP::SOAPString[]", [0, nil]],
      ["image", "AdWords::V201003::AdGroupAdService::Image", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::PolicyViolationError,
    :schema_type => XSD::QName.new(NsV201003, "PolicyViolationError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["key", "AdWords::V201003::AdGroupAdService::PolicyViolationKey", [0, 1]],
      ["externalPolicyName", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyUrl", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyDescription", "SOAP::SOAPString", [0, 1]],
      ["isExemptable", "SOAP::SOAPBoolean", [0, 1]],
      ["violatingParts", "AdWords::V201003::AdGroupAdService::PolicyViolationErrorPart[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::Stats,
    :schema_type => XSD::QName.new(NsV201003, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdWords::V201003::AdGroupAdService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdWords::V201003::AdGroupAdService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdWords::V201003::AdGroupAdService::Money", [0, 1]],
      ["averageCpm", "AdWords::V201003::AdGroupAdService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdWords::V201003::AdGroupAdService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdWords::V201003::AdGroupAdService::Money", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Stats.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::TemplateElementField,
    :schema_type => XSD::QName.new(NsV201003, "TemplateElementField"),
    :schema_element => [
      ["name", "SOAP::SOAPString", [0, 1]],
      ["type", "AdWords::V201003::AdGroupAdService::TemplateElementFieldType", [0, 1]],
      ["fieldText", "SOAP::SOAPString", [0, 1]],
      ["fieldMedia", "AdWords::V201003::AdGroupAdService::Media", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::ApiException,
    :schema_type => XSD::QName.new(NsV201003, "ApiException"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdWords::V201003::AdGroupAdService::ApiError[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::ApplicationException,
    :schema_type => XSD::QName.new(NsV201003, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApplicationException.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::ImageAd,
    :schema_type => XSD::QName.new(NsV201003, "ImageAd"),
    :schema_basetype => XSD::QName.new(NsV201003, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdWords::V201003::AdGroupAdService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Ad.Type")], [0, 1]],
      ["image", "AdWords::V201003::AdGroupAdService::Image", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::LocalBusinessAd,
    :schema_type => XSD::QName.new(NsV201003, "LocalBusinessAd"),
    :schema_basetype => XSD::QName.new(NsV201003, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdWords::V201003::AdGroupAdService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Ad.Type")], [0, 1]],
      ["fullBusinessName", "SOAP::SOAPString", [0, 1]],
      ["phoneNumber", "SOAP::SOAPString", [0, 1]],
      ["streetAddress", "SOAP::SOAPString", [0, 1]],
      ["city", "SOAP::SOAPString", [0, 1]],
      ["region", "SOAP::SOAPString", [0, 1]],
      ["regionCode", "SOAP::SOAPString", [0, 1]],
      ["postalCode", "SOAP::SOAPString", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]],
      ["businessName", "SOAP::SOAPString", [0, 1]],
      ["description1", "SOAP::SOAPString", [0, 1]],
      ["description2", "SOAP::SOAPString", [0, 1]],
      ["target", "AdWords::V201003::AdGroupAdService::ProximityTarget", [0, 1]],
      ["businessImage", "AdWords::V201003::AdGroupAdService::Image", [0, 1]],
      ["icon", "AdWords::V201003::AdGroupAdService::Image", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::TemplateElement,
    :schema_type => XSD::QName.new(NsV201003, "TemplateElement"),
    :schema_element => [
      ["uniqueName", "SOAP::SOAPString", [0, 1]],
      ["fields", "AdWords::V201003::AdGroupAdService::TemplateElementField[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::AdGroupAdSelector,
    :schema_type => XSD::QName.new(NsV201003, "AdGroupAdSelector"),
    :schema_element => [
      ["campaignIds", "SOAP::SOAPLong[]", [0, nil]],
      ["adGroupIds", "SOAP::SOAPLong[]", [0, nil]],
      ["adIds", "SOAP::SOAPLong[]", [0, nil]],
      ["statuses", "AdWords::V201003::AdGroupAdService::AdGroupAdStatus[]", [0, nil]],
      ["statsSelector", "AdWords::V201003::AdGroupAdService::AdStatsSelector", [0, 1]],
      ["paging", "AdWords::V201003::AdGroupAdService::Paging", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::TemplateAd,
    :schema_type => XSD::QName.new(NsV201003, "TemplateAd"),
    :schema_basetype => XSD::QName.new(NsV201003, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdWords::V201003::AdGroupAdService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Ad.Type")], [0, 1]],
      ["templateId", "SOAP::SOAPLong", [0, 1]],
      ["adUnionId", "AdWords::V201003::AdGroupAdService::AdUnionId", [0, 1]],
      ["templateElements", "AdWords::V201003::AdGroupAdService::TemplateElement[]", [0, nil]],
      ["dimensions", "AdWords::V201003::AdGroupAdService::Dimensions", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["duration", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::Ad,
    :schema_type => XSD::QName.new(NsV201003, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdWords::V201003::AdGroupAdService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Ad.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::AdGroupAd,
    :schema_type => XSD::QName.new(NsV201003, "AdGroupAd"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["ad", "AdWords::V201003::AdGroupAdService::Ad", [0, 1]],
      ["status", "AdWords::V201003::AdGroupAdService::AdGroupAdStatus", [0, 1]],
      ["stats", "AdWords::V201003::AdGroupAdService::AdStats", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::AdGroupAdOperation,
    :schema_type => XSD::QName.new(NsV201003, "AdGroupAdOperation"),
    :schema_basetype => XSD::QName.new(NsV201003, "Operation"),
    :schema_element => [
      ["operator", "AdWords::V201003::AdGroupAdService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Operation.Type")], [0, 1]],
      ["operand", "AdWords::V201003::AdGroupAdService::AdGroupAd", [0, 1]],
      ["exemptionRequests", "AdWords::V201003::AdGroupAdService::ExemptionRequest[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::AdGroupAdPage,
    :schema_type => XSD::QName.new(NsV201003, "AdGroupAdPage"),
    :schema_basetype => XSD::QName.new(NsV201003, "Page"),
    :schema_element => [
      ["totalNumEntries", "SOAP::SOAPInt", [0, 1]],
      ["page_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Page.Type")], [0, 1]],
      ["entries", "AdWords::V201003::AdGroupAdService::AdGroupAd[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::AdGroupAdReturnValue,
    :schema_type => XSD::QName.new(NsV201003, "AdGroupAdReturnValue"),
    :schema_basetype => XSD::QName.new(NsV201003, "ListReturnValue"),
    :schema_element => [
      ["listReturnValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ListReturnValue.Type")], [0, 1]],
      ["value", "AdWords::V201003::AdGroupAdService::AdGroupAd[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::AdApprovalStatus,
    :schema_type => XSD::QName.new(NsV201003, "Ad.ApprovalStatus")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::AdErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "AdError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::AdGroupAdStatus,
    :schema_type => XSD::QName.new(NsV201003, "AdGroupAd.Status")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::AdGroupAdErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "AdGroupAdError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::AgeTargetAge,
    :schema_type => XSD::QName.new(NsV201003, "AgeTarget.Age")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::AuthenticationErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "AuthenticationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::AuthorizationErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "AuthorizationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::ClientTermsErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "ClientTermsError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::DatabaseErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "DatabaseError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::DateErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "DateError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::DayOfWeek,
    :schema_type => XSD::QName.new(NsV201003, "DayOfWeek")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::DeprecatedAdType,
    :schema_type => XSD::QName.new(NsV201003, "DeprecatedAd.Type")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::DistinctErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "DistinctError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::EntityCountLimitExceededReason,
    :schema_type => XSD::QName.new(NsV201003, "EntityCountLimitExceeded.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::EntityNotFoundReason,
    :schema_type => XSD::QName.new(NsV201003, "EntityNotFound.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::GenderTargetGender,
    :schema_type => XSD::QName.new(NsV201003, "GenderTarget.Gender")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::IdErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "IdError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::ImageErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "ImageError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::InternalApiErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "InternalApiError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::MarkupLanguageType,
    :schema_type => XSD::QName.new(NsV201003, "MarkupLanguageType")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::MediaMediaExtendedCapabilityState,
    :schema_type => XSD::QName.new(NsV201003, "Media.MediaExtendedCapabilityState")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::MediaMediaExtendedCapabilityType,
    :schema_type => XSD::QName.new(NsV201003, "Media.MediaExtendedCapabilityType")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::MediaMediaSubType,
    :schema_type => XSD::QName.new(NsV201003, "Media.MediaSubType")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::MediaMediaType,
    :schema_type => XSD::QName.new(NsV201003, "Media.MediaType")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::MediaMimeType,
    :schema_type => XSD::QName.new(NsV201003, "Media.MimeType")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::MediaSize,
    :schema_type => XSD::QName.new(NsV201003, "Media.Size")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::MediaErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "MediaError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::MinuteOfHour,
    :schema_type => XSD::QName.new(NsV201003, "MinuteOfHour")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::NetworkCoverageType,
    :schema_type => XSD::QName.new(NsV201003, "NetworkCoverageType")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::NewEntityCreationErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "NewEntityCreationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::NotEmptyErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "NotEmptyError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::NotWhitelistedErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "NotWhitelistedError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::NullErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "NullError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::OperationAccessDeniedReason,
    :schema_type => XSD::QName.new(NsV201003, "OperationAccessDenied.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::Operator,
    :schema_type => XSD::QName.new(NsV201003, "Operator")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::PagingErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "PagingError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::PlatformType,
    :schema_type => XSD::QName.new(NsV201003, "PlatformType")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::ProximityTargetDistanceUnits,
    :schema_type => XSD::QName.new(NsV201003, "ProximityTarget.DistanceUnits")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::QuotaCheckErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "QuotaCheckError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::RangeErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "RangeError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::RateExceededErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "RateExceededError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::ReadOnlyErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "ReadOnlyError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::RequestErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "RequestError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::RequiredErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "RequiredError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::SizeLimitErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "SizeLimitError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::StatsNetwork,
    :schema_type => XSD::QName.new(NsV201003, "Stats.Network")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::StatsQueryErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "StatsQueryError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::TemplateElementFieldType,
    :schema_type => XSD::QName.new(NsV201003, "TemplateElementField.Type")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::VideoType,
    :schema_type => XSD::QName.new(NsV201003, "VideoType")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::Get,
    :schema_name => XSD::QName.new(NsV201003, "get"),
    :schema_element => [
      ["selector", "AdWords::V201003::AdGroupAdService::AdGroupAdSelector", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::GetResponse,
    :schema_name => XSD::QName.new(NsV201003, "getResponse"),
    :schema_element => [
      ["rval", "AdWords::V201003::AdGroupAdService::AdGroupAdPage", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::ApiException,
    :schema_name => XSD::QName.new(NsV201003, "ApiExceptionFault"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdWords::V201003::AdGroupAdService::ApiError[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::Mutate,
    :schema_name => XSD::QName.new(NsV201003, "mutate"),
    :schema_element => [
      ["operations", "AdWords::V201003::AdGroupAdService::AdGroupAdOperation[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::MutateResponse,
    :schema_name => XSD::QName.new(NsV201003, "mutateResponse"),
    :schema_element => [
      ["rval", "AdWords::V201003::AdGroupAdService::AdGroupAdReturnValue", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::SoapHeader,
    :schema_name => XSD::QName.new(NsV201003, "RequestHeader"),
    :schema_element => [
      ["authToken", "SOAP::SOAPString", [0, 1]],
      ["clientCustomerId", "SOAP::SOAPString", [0, 1]],
      ["clientEmail", "SOAP::SOAPString", [0, 1]],
      ["developerToken", "SOAP::SOAPString", [0, 1]],
      ["userAgent", "SOAP::SOAPString", [0, 1]],
      ["validateOnly", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupAdService::SoapResponseHeader,
    :schema_name => XSD::QName.new(NsV201003, "ResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )
end

end; end; end
