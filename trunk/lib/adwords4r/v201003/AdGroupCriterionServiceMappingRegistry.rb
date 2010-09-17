require 'adwords4r/v201003/AdGroupCriterionService'
require 'soap/mapping'

module AdWords; module V201003; module AdGroupCriterionService

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsV201003 = "https://adwords.google.com/api/adwords/cm/v201003"

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::AdGroupCriterionError,
    :schema_type => XSD::QName.new(NsV201003, "AdGroupCriterionError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupCriterionService::AdGroupCriterionErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::AdGroupCriterionIdFilter,
    :schema_type => XSD::QName.new(NsV201003, "AdGroupCriterionIdFilter"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["criterionId", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::AdGroupCriterionLimitExceeded,
    :schema_type => XSD::QName.new(NsV201003, "AdGroupCriterionLimitExceeded"),
    :schema_basetype => XSD::QName.new(NsV201003, "EntityCountLimitExceeded"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupCriterionService::EntityCountLimitExceededReason", [0, 1]],
      ["enclosingId", "SOAP::SOAPString", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]],
      ["limitType", "AdWords::V201003::AdGroupCriterionService::AdGroupCriterionLimitExceededCriteriaLimitType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::AuthenticationError,
    :schema_type => XSD::QName.new(NsV201003, "AuthenticationError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupCriterionService::AuthenticationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::AuthorizationError,
    :schema_type => XSD::QName.new(NsV201003, "AuthorizationError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupCriterionService::AuthorizationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::BiddingError,
    :schema_type => XSD::QName.new(NsV201003, "BiddingError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupCriterionService::BiddingErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::ClientTermsError,
    :schema_type => XSD::QName.new(NsV201003, "ClientTermsError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupCriterionService::ClientTermsErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::ConversionOptimizerAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV201003, "ConversionOptimizerAdGroupCriterionBids"),
    :schema_basetype => XSD::QName.new(NsV201003, "AdGroupCriterionBids"),
    :schema_element => [
      ["adGroupCriterionBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "AdGroupCriterionBids.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::CriterionPolicyError,
    :schema_type => XSD::QName.new(NsV201003, "CriterionPolicyError"),
    :schema_basetype => XSD::QName.new(NsV201003, "PolicyViolationError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["key", "AdWords::V201003::AdGroupCriterionService::PolicyViolationKey", [0, 1]],
      ["externalPolicyName", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyUrl", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyDescription", "SOAP::SOAPString", [0, 1]],
      ["isExemptable", "SOAP::SOAPBoolean", [0, 1]],
      ["violatingParts", "AdWords::V201003::AdGroupCriterionService::PolicyViolationErrorPart[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::DateError,
    :schema_type => XSD::QName.new(NsV201003, "DateError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupCriterionService::DateErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::DateRange,
    :schema_type => XSD::QName.new(NsV201003, "DateRange"),
    :schema_element => [
      ["min", "SOAP::SOAPString", [0, 1]],
      ["max", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::DistinctError,
    :schema_type => XSD::QName.new(NsV201003, "DistinctError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupCriterionService::DistinctErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::DoubleValue,
    :schema_type => XSD::QName.new(NsV201003, "DoubleValue"),
    :schema_basetype => XSD::QName.new(NsV201003, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::EntityAccessDenied,
    :schema_type => XSD::QName.new(NsV201003, "EntityAccessDenied"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupCriterionService::EntityAccessDeniedReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::EntityNotFound,
    :schema_type => XSD::QName.new(NsV201003, "EntityNotFound"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupCriterionService::EntityNotFoundReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::InternalApiError,
    :schema_type => XSD::QName.new(NsV201003, "InternalApiError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupCriterionService::InternalApiErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::Keyword,
    :schema_type => XSD::QName.new(NsV201003, "Keyword"),
    :schema_basetype => XSD::QName.new(NsV201003, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Criterion.Type")], [0, 1]],
      ["text", "SOAP::SOAPString", [0, 1]],
      ["matchType", "AdWords::V201003::AdGroupCriterionService::KeywordMatchType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::LongValue,
    :schema_type => XSD::QName.new(NsV201003, "LongValue"),
    :schema_basetype => XSD::QName.new(NsV201003, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::Money,
    :schema_type => XSD::QName.new(NsV201003, "Money"),
    :schema_basetype => XSD::QName.new(NsV201003, "ComparableValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ComparableValue.Type")], [0, 1]],
      ["microAmount", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::NegativeAdGroupCriterion,
    :schema_type => XSD::QName.new(NsV201003, "NegativeAdGroupCriterion"),
    :schema_basetype => XSD::QName.new(NsV201003, "AdGroupCriterion"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["criterion", "AdWords::V201003::AdGroupCriterionService::Criterion", [0, 1]],
      ["adGroupCriterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "AdGroupCriterion.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::NewEntityCreationError,
    :schema_type => XSD::QName.new(NsV201003, "NewEntityCreationError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupCriterionService::NewEntityCreationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::NotEmptyError,
    :schema_type => XSD::QName.new(NsV201003, "NotEmptyError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupCriterionService::NotEmptyErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::NotWhitelistedError,
    :schema_type => XSD::QName.new(NsV201003, "NotWhitelistedError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupCriterionService::NotWhitelistedErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::NullError,
    :schema_type => XSD::QName.new(NsV201003, "NullError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupCriterionService::NullErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::OperationAccessDenied,
    :schema_type => XSD::QName.new(NsV201003, "OperationAccessDenied"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupCriterionService::OperationAccessDeniedReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::Paging,
    :schema_type => XSD::QName.new(NsV201003, "Paging"),
    :schema_element => [
      ["startIndex", "SOAP::SOAPInt", [0, 1]],
      ["numberResults", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::PagingError,
    :schema_type => XSD::QName.new(NsV201003, "PagingError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupCriterionService::PagingErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::Placement,
    :schema_type => XSD::QName.new(NsV201003, "Placement"),
    :schema_basetype => XSD::QName.new(NsV201003, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Criterion.Type")], [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::PolicyViolationErrorPart,
    :schema_type => XSD::QName.new(NsV201003, "PolicyViolationError.Part"),
    :schema_element => [
      ["index", "SOAP::SOAPInt", [0, 1]],
      ["length", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::PolicyViolationKey,
    :schema_type => XSD::QName.new(NsV201003, "PolicyViolationKey"),
    :schema_element => [
      ["policyName", "SOAP::SOAPString", [0, 1]],
      ["violatingText", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::QualityInfo,
    :schema_type => XSD::QName.new(NsV201003, "QualityInfo"),
    :schema_element => [
      ["isKeywordAdRelevanceAcceptable", "SOAP::SOAPBoolean", [0, 1]],
      ["isLandingPageQualityAcceptable", "SOAP::SOAPBoolean", [0, 1]],
      ["isLandingPageLatencyAcceptable", "SOAP::SOAPBoolean", [0, 1]],
      ["qualityScore", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::QuotaCheckError,
    :schema_type => XSD::QName.new(NsV201003, "QuotaCheckError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupCriterionService::QuotaCheckErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::C_RangeError,
    :schema_type => XSD::QName.new(NsV201003, "RangeError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupCriterionService::RangeErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::RateExceededError,
    :schema_type => XSD::QName.new(NsV201003, "RateExceededError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupCriterionService::RateExceededErrorReason", [0, 1]],
      ["rateName", "SOAP::SOAPString", [0, 1]],
      ["rateScope", "SOAP::SOAPString", [0, 1]],
      ["retryAfterSeconds", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::ReadOnlyError,
    :schema_type => XSD::QName.new(NsV201003, "ReadOnlyError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupCriterionService::ReadOnlyErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::RejectedError,
    :schema_type => XSD::QName.new(NsV201003, "RejectedError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupCriterionService::RejectedErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::RequestError,
    :schema_type => XSD::QName.new(NsV201003, "RequestError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupCriterionService::RequestErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::RequiredError,
    :schema_type => XSD::QName.new(NsV201003, "RequiredError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupCriterionService::RequiredErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::SizeLimitError,
    :schema_type => XSD::QName.new(NsV201003, "SizeLimitError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupCriterionService::SizeLimitErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::SoapHeader,
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
    :class => AdWords::V201003::AdGroupCriterionService::SoapResponseHeader,
    :schema_type => XSD::QName.new(NsV201003, "SoapResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::StatsQueryError,
    :schema_type => XSD::QName.new(NsV201003, "StatsQueryError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupCriterionService::StatsQueryErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::StatsSelector,
    :schema_type => XSD::QName.new(NsV201003, "StatsSelector"),
    :schema_element => [
      ["dateRange", "AdWords::V201003::AdGroupCriterionService::DateRange", [0, 1]],
      ["statsSelector_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "StatsSelector.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::Vertical,
    :schema_type => XSD::QName.new(NsV201003, "Vertical"),
    :schema_basetype => XSD::QName.new(NsV201003, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Criterion.Type")], [0, 1]],
      ["path", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::DatabaseError,
    :schema_type => XSD::QName.new(NsV201003, "DatabaseError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupCriterionService::DatabaseErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::ExemptionRequest,
    :schema_type => XSD::QName.new(NsV201003, "ExemptionRequest"),
    :schema_element => [
      ["key", "AdWords::V201003::AdGroupCriterionService::PolicyViolationKey", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::PolicyViolationError,
    :schema_type => XSD::QName.new(NsV201003, "PolicyViolationError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["key", "AdWords::V201003::AdGroupCriterionService::PolicyViolationKey", [0, 1]],
      ["externalPolicyName", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyUrl", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyDescription", "SOAP::SOAPString", [0, 1]],
      ["isExemptable", "SOAP::SOAPBoolean", [0, 1]],
      ["violatingParts", "AdWords::V201003::AdGroupCriterionService::PolicyViolationErrorPart[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::Stats,
    :schema_type => XSD::QName.new(NsV201003, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdWords::V201003::AdGroupCriterionService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdWords::V201003::AdGroupCriterionService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdWords::V201003::AdGroupCriterionService::Money", [0, 1]],
      ["averageCpm", "AdWords::V201003::AdGroupCriterionService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdWords::V201003::AdGroupCriterionService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdWords::V201003::AdGroupCriterionService::Money", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Stats.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::ApiException,
    :schema_type => XSD::QName.new(NsV201003, "ApiException"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdWords::V201003::AdGroupCriterionService::ApiError[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::ApplicationException,
    :schema_type => XSD::QName.new(NsV201003, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApplicationException.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::Bid,
    :schema_type => XSD::QName.new(NsV201003, "Bid"),
    :schema_element => [
      ["amount", "AdWords::V201003::AdGroupCriterionService::Money", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::BudgetOptimizerAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV201003, "BudgetOptimizerAdGroupCriterionBids"),
    :schema_basetype => XSD::QName.new(NsV201003, "AdGroupCriterionBids"),
    :schema_element => [
      ["adGroupCriterionBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "AdGroupCriterionBids.Type")], [0, 1]],
      ["proxyBid", "AdWords::V201003::AdGroupCriterionService::Bid", [0, 1]],
      ["enhancedCpcEnabled", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::ManualCPMAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV201003, "ManualCPMAdGroupCriterionBids"),
    :schema_basetype => XSD::QName.new(NsV201003, "AdGroupCriterionBids"),
    :schema_element => [
      ["adGroupCriterionBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "AdGroupCriterionBids.Type")], [0, 1]],
      ["maxCpm", "AdWords::V201003::AdGroupCriterionService::Bid", [0, 1]],
      ["bidSource", "AdWords::V201003::AdGroupCriterionService::BidSource", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::PositionPreferenceAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV201003, "PositionPreferenceAdGroupCriterionBids"),
    :schema_element => [
      ["proxyMaxCpc", "AdWords::V201003::AdGroupCriterionService::Bid", [0, 1]],
      ["preferredPosition", "SOAP::SOAPInt", [0, 1]],
      ["bottomPosition", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::Criterion,
    :schema_type => XSD::QName.new(NsV201003, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Criterion.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::ManualCPCAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV201003, "ManualCPCAdGroupCriterionBids"),
    :schema_basetype => XSD::QName.new(NsV201003, "AdGroupCriterionBids"),
    :schema_element => [
      ["adGroupCriterionBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "AdGroupCriterionBids.Type")], [0, 1]],
      ["maxCpc", "AdWords::V201003::AdGroupCriterionService::Bid", [0, 1]],
      ["bidSource", "AdWords::V201003::AdGroupCriterionService::BidSource", [0, 1]],
      ["positionPreferenceBids", "AdWords::V201003::AdGroupCriterionService::PositionPreferenceAdGroupCriterionBids", [0, 1]],
      ["enhancedCpcEnabled", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::BiddableAdGroupCriterion,
    :schema_type => XSD::QName.new(NsV201003, "BiddableAdGroupCriterion"),
    :schema_basetype => XSD::QName.new(NsV201003, "AdGroupCriterion"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["criterion", "AdWords::V201003::AdGroupCriterionService::Criterion", [0, 1]],
      ["adGroupCriterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "AdGroupCriterion.Type")], [0, 1]],
      ["userStatus", "AdWords::V201003::AdGroupCriterionService::UserStatus", [0, 1]],
      ["systemServingStatus", "AdWords::V201003::AdGroupCriterionService::SystemServingStatus", [0, 1]],
      ["approvalStatus", "AdWords::V201003::AdGroupCriterionService::ApprovalStatus", [0, 1]],
      ["destinationUrl", "SOAP::SOAPString", [0, 1]],
      ["bids", "AdWords::V201003::AdGroupCriterionService::AdGroupCriterionBids", [0, 1]],
      ["firstPageCpc", "AdWords::V201003::AdGroupCriterionService::Bid", [0, 1]],
      ["qualityInfo", "AdWords::V201003::AdGroupCriterionService::QualityInfo", [0, 1]],
      ["stats", "AdWords::V201003::AdGroupCriterionService::Stats", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::AdGroupCriterion,
    :schema_type => XSD::QName.new(NsV201003, "AdGroupCriterion"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["criterion", "AdWords::V201003::AdGroupCriterionService::Criterion", [0, 1]],
      ["adGroupCriterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "AdGroupCriterion.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::AdGroupCriterionOperation,
    :schema_type => XSD::QName.new(NsV201003, "AdGroupCriterionOperation"),
    :schema_basetype => XSD::QName.new(NsV201003, "Operation"),
    :schema_element => [
      ["operator", "AdWords::V201003::AdGroupCriterionService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Operation.Type")], [0, 1]],
      ["operand", "AdWords::V201003::AdGroupCriterionService::AdGroupCriterion", [0, 1]],
      ["exemptionRequests", "AdWords::V201003::AdGroupCriterionService::ExemptionRequest[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::AdGroupCriterionPage,
    :schema_type => XSD::QName.new(NsV201003, "AdGroupCriterionPage"),
    :schema_basetype => XSD::QName.new(NsV201003, "Page"),
    :schema_element => [
      ["totalNumEntries", "SOAP::SOAPInt", [0, 1]],
      ["page_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Page.Type")], [0, 1]],
      ["entries", "AdWords::V201003::AdGroupCriterionService::AdGroupCriterion[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::AdGroupCriterionReturnValue,
    :schema_type => XSD::QName.new(NsV201003, "AdGroupCriterionReturnValue"),
    :schema_basetype => XSD::QName.new(NsV201003, "ListReturnValue"),
    :schema_element => [
      ["listReturnValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ListReturnValue.Type")], [0, 1]],
      ["value", "AdWords::V201003::AdGroupCriterionService::AdGroupCriterion[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::AdGroupCriterionSelector,
    :schema_type => XSD::QName.new(NsV201003, "AdGroupCriterionSelector"),
    :schema_element => [
      ["idFilters", "AdWords::V201003::AdGroupCriterionService::AdGroupCriterionIdFilter[]", [0, nil]],
      ["criterionUse", "AdWords::V201003::AdGroupCriterionService::CriterionUse", [0, 1]],
      ["userStatuses", "AdWords::V201003::AdGroupCriterionService::UserStatus[]", [0, nil]],
      ["statsSelector", "AdWords::V201003::AdGroupCriterionService::StatsSelector", [0, 1]],
      ["paging", "AdWords::V201003::AdGroupCriterionService::Paging", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::AdGroupCriterionErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "AdGroupCriterionError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::AdGroupCriterionLimitExceededCriteriaLimitType,
    :schema_type => XSD::QName.new(NsV201003, "AdGroupCriterionLimitExceeded.CriteriaLimitType")
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::ApprovalStatus,
    :schema_type => XSD::QName.new(NsV201003, "ApprovalStatus")
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::AuthenticationErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "AuthenticationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::AuthorizationErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "AuthorizationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::BidSource,
    :schema_type => XSD::QName.new(NsV201003, "BidSource")
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::BiddingErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "BiddingError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::ClientTermsErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "ClientTermsError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::CriterionUse,
    :schema_type => XSD::QName.new(NsV201003, "CriterionUse")
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::DatabaseErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "DatabaseError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::DateErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "DateError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::DistinctErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "DistinctError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::EntityAccessDeniedReason,
    :schema_type => XSD::QName.new(NsV201003, "EntityAccessDenied.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::EntityCountLimitExceededReason,
    :schema_type => XSD::QName.new(NsV201003, "EntityCountLimitExceeded.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::EntityNotFoundReason,
    :schema_type => XSD::QName.new(NsV201003, "EntityNotFound.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::InternalApiErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "InternalApiError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::KeywordMatchType,
    :schema_type => XSD::QName.new(NsV201003, "KeywordMatchType")
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::NewEntityCreationErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "NewEntityCreationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::NotEmptyErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "NotEmptyError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::NotWhitelistedErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "NotWhitelistedError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::NullErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "NullError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::OperationAccessDeniedReason,
    :schema_type => XSD::QName.new(NsV201003, "OperationAccessDenied.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::Operator,
    :schema_type => XSD::QName.new(NsV201003, "Operator")
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::PagingErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "PagingError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::QuotaCheckErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "QuotaCheckError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::RangeErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "RangeError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::RateExceededErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "RateExceededError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::ReadOnlyErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "ReadOnlyError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::RejectedErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "RejectedError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::RequestErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "RequestError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::RequiredErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "RequiredError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::SizeLimitErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "SizeLimitError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::StatsNetwork,
    :schema_type => XSD::QName.new(NsV201003, "Stats.Network")
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::StatsQueryErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "StatsQueryError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::SystemServingStatus,
    :schema_type => XSD::QName.new(NsV201003, "SystemServingStatus")
  )

  EncodedRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::UserStatus,
    :schema_type => XSD::QName.new(NsV201003, "UserStatus")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::AdGroupCriterionError,
    :schema_type => XSD::QName.new(NsV201003, "AdGroupCriterionError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupCriterionService::AdGroupCriterionErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::AdGroupCriterionIdFilter,
    :schema_type => XSD::QName.new(NsV201003, "AdGroupCriterionIdFilter"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["criterionId", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::AdGroupCriterionLimitExceeded,
    :schema_type => XSD::QName.new(NsV201003, "AdGroupCriterionLimitExceeded"),
    :schema_basetype => XSD::QName.new(NsV201003, "EntityCountLimitExceeded"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupCriterionService::EntityCountLimitExceededReason", [0, 1]],
      ["enclosingId", "SOAP::SOAPString", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]],
      ["limitType", "AdWords::V201003::AdGroupCriterionService::AdGroupCriterionLimitExceededCriteriaLimitType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::AuthenticationError,
    :schema_type => XSD::QName.new(NsV201003, "AuthenticationError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupCriterionService::AuthenticationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::AuthorizationError,
    :schema_type => XSD::QName.new(NsV201003, "AuthorizationError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupCriterionService::AuthorizationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::BiddingError,
    :schema_type => XSD::QName.new(NsV201003, "BiddingError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupCriterionService::BiddingErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::ClientTermsError,
    :schema_type => XSD::QName.new(NsV201003, "ClientTermsError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupCriterionService::ClientTermsErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::ConversionOptimizerAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV201003, "ConversionOptimizerAdGroupCriterionBids"),
    :schema_basetype => XSD::QName.new(NsV201003, "AdGroupCriterionBids"),
    :schema_element => [
      ["adGroupCriterionBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "AdGroupCriterionBids.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::CriterionPolicyError,
    :schema_type => XSD::QName.new(NsV201003, "CriterionPolicyError"),
    :schema_basetype => XSD::QName.new(NsV201003, "PolicyViolationError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["key", "AdWords::V201003::AdGroupCriterionService::PolicyViolationKey", [0, 1]],
      ["externalPolicyName", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyUrl", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyDescription", "SOAP::SOAPString", [0, 1]],
      ["isExemptable", "SOAP::SOAPBoolean", [0, 1]],
      ["violatingParts", "AdWords::V201003::AdGroupCriterionService::PolicyViolationErrorPart[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::DateError,
    :schema_type => XSD::QName.new(NsV201003, "DateError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupCriterionService::DateErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::DateRange,
    :schema_type => XSD::QName.new(NsV201003, "DateRange"),
    :schema_element => [
      ["min", "SOAP::SOAPString", [0, 1]],
      ["max", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::DistinctError,
    :schema_type => XSD::QName.new(NsV201003, "DistinctError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupCriterionService::DistinctErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::DoubleValue,
    :schema_type => XSD::QName.new(NsV201003, "DoubleValue"),
    :schema_basetype => XSD::QName.new(NsV201003, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::EntityAccessDenied,
    :schema_type => XSD::QName.new(NsV201003, "EntityAccessDenied"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupCriterionService::EntityAccessDeniedReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::EntityNotFound,
    :schema_type => XSD::QName.new(NsV201003, "EntityNotFound"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupCriterionService::EntityNotFoundReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::InternalApiError,
    :schema_type => XSD::QName.new(NsV201003, "InternalApiError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupCriterionService::InternalApiErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::Keyword,
    :schema_type => XSD::QName.new(NsV201003, "Keyword"),
    :schema_basetype => XSD::QName.new(NsV201003, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Criterion.Type")], [0, 1]],
      ["text", "SOAP::SOAPString", [0, 1]],
      ["matchType", "AdWords::V201003::AdGroupCriterionService::KeywordMatchType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::LongValue,
    :schema_type => XSD::QName.new(NsV201003, "LongValue"),
    :schema_basetype => XSD::QName.new(NsV201003, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::Money,
    :schema_type => XSD::QName.new(NsV201003, "Money"),
    :schema_basetype => XSD::QName.new(NsV201003, "ComparableValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ComparableValue.Type")], [0, 1]],
      ["microAmount", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::NegativeAdGroupCriterion,
    :schema_type => XSD::QName.new(NsV201003, "NegativeAdGroupCriterion"),
    :schema_basetype => XSD::QName.new(NsV201003, "AdGroupCriterion"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["criterion", "AdWords::V201003::AdGroupCriterionService::Criterion", [0, 1]],
      ["adGroupCriterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "AdGroupCriterion.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::NewEntityCreationError,
    :schema_type => XSD::QName.new(NsV201003, "NewEntityCreationError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupCriterionService::NewEntityCreationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::NotEmptyError,
    :schema_type => XSD::QName.new(NsV201003, "NotEmptyError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupCriterionService::NotEmptyErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::NotWhitelistedError,
    :schema_type => XSD::QName.new(NsV201003, "NotWhitelistedError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupCriterionService::NotWhitelistedErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::NullError,
    :schema_type => XSD::QName.new(NsV201003, "NullError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupCriterionService::NullErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::OperationAccessDenied,
    :schema_type => XSD::QName.new(NsV201003, "OperationAccessDenied"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupCriterionService::OperationAccessDeniedReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::Paging,
    :schema_type => XSD::QName.new(NsV201003, "Paging"),
    :schema_element => [
      ["startIndex", "SOAP::SOAPInt", [0, 1]],
      ["numberResults", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::PagingError,
    :schema_type => XSD::QName.new(NsV201003, "PagingError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupCriterionService::PagingErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::Placement,
    :schema_type => XSD::QName.new(NsV201003, "Placement"),
    :schema_basetype => XSD::QName.new(NsV201003, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Criterion.Type")], [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::PolicyViolationErrorPart,
    :schema_type => XSD::QName.new(NsV201003, "PolicyViolationError.Part"),
    :schema_element => [
      ["index", "SOAP::SOAPInt", [0, 1]],
      ["length", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::PolicyViolationKey,
    :schema_type => XSD::QName.new(NsV201003, "PolicyViolationKey"),
    :schema_element => [
      ["policyName", "SOAP::SOAPString", [0, 1]],
      ["violatingText", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::QualityInfo,
    :schema_type => XSD::QName.new(NsV201003, "QualityInfo"),
    :schema_element => [
      ["isKeywordAdRelevanceAcceptable", "SOAP::SOAPBoolean", [0, 1]],
      ["isLandingPageQualityAcceptable", "SOAP::SOAPBoolean", [0, 1]],
      ["isLandingPageLatencyAcceptable", "SOAP::SOAPBoolean", [0, 1]],
      ["qualityScore", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::QuotaCheckError,
    :schema_type => XSD::QName.new(NsV201003, "QuotaCheckError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupCriterionService::QuotaCheckErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::C_RangeError,
    :schema_type => XSD::QName.new(NsV201003, "RangeError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupCriterionService::RangeErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::RateExceededError,
    :schema_type => XSD::QName.new(NsV201003, "RateExceededError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupCriterionService::RateExceededErrorReason", [0, 1]],
      ["rateName", "SOAP::SOAPString", [0, 1]],
      ["rateScope", "SOAP::SOAPString", [0, 1]],
      ["retryAfterSeconds", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::ReadOnlyError,
    :schema_type => XSD::QName.new(NsV201003, "ReadOnlyError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupCriterionService::ReadOnlyErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::RejectedError,
    :schema_type => XSD::QName.new(NsV201003, "RejectedError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupCriterionService::RejectedErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::RequestError,
    :schema_type => XSD::QName.new(NsV201003, "RequestError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupCriterionService::RequestErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::RequiredError,
    :schema_type => XSD::QName.new(NsV201003, "RequiredError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupCriterionService::RequiredErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::SizeLimitError,
    :schema_type => XSD::QName.new(NsV201003, "SizeLimitError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupCriterionService::SizeLimitErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::SoapHeader,
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
    :class => AdWords::V201003::AdGroupCriterionService::SoapResponseHeader,
    :schema_type => XSD::QName.new(NsV201003, "SoapResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::StatsQueryError,
    :schema_type => XSD::QName.new(NsV201003, "StatsQueryError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupCriterionService::StatsQueryErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::StatsSelector,
    :schema_type => XSD::QName.new(NsV201003, "StatsSelector"),
    :schema_element => [
      ["dateRange", "AdWords::V201003::AdGroupCriterionService::DateRange", [0, 1]],
      ["statsSelector_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "StatsSelector.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::Vertical,
    :schema_type => XSD::QName.new(NsV201003, "Vertical"),
    :schema_basetype => XSD::QName.new(NsV201003, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Criterion.Type")], [0, 1]],
      ["path", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::DatabaseError,
    :schema_type => XSD::QName.new(NsV201003, "DatabaseError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V201003::AdGroupCriterionService::DatabaseErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::ExemptionRequest,
    :schema_type => XSD::QName.new(NsV201003, "ExemptionRequest"),
    :schema_element => [
      ["key", "AdWords::V201003::AdGroupCriterionService::PolicyViolationKey", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::PolicyViolationError,
    :schema_type => XSD::QName.new(NsV201003, "PolicyViolationError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["key", "AdWords::V201003::AdGroupCriterionService::PolicyViolationKey", [0, 1]],
      ["externalPolicyName", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyUrl", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyDescription", "SOAP::SOAPString", [0, 1]],
      ["isExemptable", "SOAP::SOAPBoolean", [0, 1]],
      ["violatingParts", "AdWords::V201003::AdGroupCriterionService::PolicyViolationErrorPart[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::Stats,
    :schema_type => XSD::QName.new(NsV201003, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdWords::V201003::AdGroupCriterionService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdWords::V201003::AdGroupCriterionService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdWords::V201003::AdGroupCriterionService::Money", [0, 1]],
      ["averageCpm", "AdWords::V201003::AdGroupCriterionService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdWords::V201003::AdGroupCriterionService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdWords::V201003::AdGroupCriterionService::Money", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Stats.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::ApiException,
    :schema_type => XSD::QName.new(NsV201003, "ApiException"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdWords::V201003::AdGroupCriterionService::ApiError[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::ApplicationException,
    :schema_type => XSD::QName.new(NsV201003, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApplicationException.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::Bid,
    :schema_type => XSD::QName.new(NsV201003, "Bid"),
    :schema_element => [
      ["amount", "AdWords::V201003::AdGroupCriterionService::Money", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::BudgetOptimizerAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV201003, "BudgetOptimizerAdGroupCriterionBids"),
    :schema_basetype => XSD::QName.new(NsV201003, "AdGroupCriterionBids"),
    :schema_element => [
      ["adGroupCriterionBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "AdGroupCriterionBids.Type")], [0, 1]],
      ["proxyBid", "AdWords::V201003::AdGroupCriterionService::Bid", [0, 1]],
      ["enhancedCpcEnabled", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::ManualCPMAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV201003, "ManualCPMAdGroupCriterionBids"),
    :schema_basetype => XSD::QName.new(NsV201003, "AdGroupCriterionBids"),
    :schema_element => [
      ["adGroupCriterionBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "AdGroupCriterionBids.Type")], [0, 1]],
      ["maxCpm", "AdWords::V201003::AdGroupCriterionService::Bid", [0, 1]],
      ["bidSource", "AdWords::V201003::AdGroupCriterionService::BidSource", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::PositionPreferenceAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV201003, "PositionPreferenceAdGroupCriterionBids"),
    :schema_element => [
      ["proxyMaxCpc", "AdWords::V201003::AdGroupCriterionService::Bid", [0, 1]],
      ["preferredPosition", "SOAP::SOAPInt", [0, 1]],
      ["bottomPosition", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::Criterion,
    :schema_type => XSD::QName.new(NsV201003, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Criterion.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::ManualCPCAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV201003, "ManualCPCAdGroupCriterionBids"),
    :schema_basetype => XSD::QName.new(NsV201003, "AdGroupCriterionBids"),
    :schema_element => [
      ["adGroupCriterionBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "AdGroupCriterionBids.Type")], [0, 1]],
      ["maxCpc", "AdWords::V201003::AdGroupCriterionService::Bid", [0, 1]],
      ["bidSource", "AdWords::V201003::AdGroupCriterionService::BidSource", [0, 1]],
      ["positionPreferenceBids", "AdWords::V201003::AdGroupCriterionService::PositionPreferenceAdGroupCriterionBids", [0, 1]],
      ["enhancedCpcEnabled", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::BiddableAdGroupCriterion,
    :schema_type => XSD::QName.new(NsV201003, "BiddableAdGroupCriterion"),
    :schema_basetype => XSD::QName.new(NsV201003, "AdGroupCriterion"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["criterion", "AdWords::V201003::AdGroupCriterionService::Criterion", [0, 1]],
      ["adGroupCriterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "AdGroupCriterion.Type")], [0, 1]],
      ["userStatus", "AdWords::V201003::AdGroupCriterionService::UserStatus", [0, 1]],
      ["systemServingStatus", "AdWords::V201003::AdGroupCriterionService::SystemServingStatus", [0, 1]],
      ["approvalStatus", "AdWords::V201003::AdGroupCriterionService::ApprovalStatus", [0, 1]],
      ["destinationUrl", "SOAP::SOAPString", [0, 1]],
      ["bids", "AdWords::V201003::AdGroupCriterionService::AdGroupCriterionBids", [0, 1]],
      ["firstPageCpc", "AdWords::V201003::AdGroupCriterionService::Bid", [0, 1]],
      ["qualityInfo", "AdWords::V201003::AdGroupCriterionService::QualityInfo", [0, 1]],
      ["stats", "AdWords::V201003::AdGroupCriterionService::Stats", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::AdGroupCriterion,
    :schema_type => XSD::QName.new(NsV201003, "AdGroupCriterion"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["criterion", "AdWords::V201003::AdGroupCriterionService::Criterion", [0, 1]],
      ["adGroupCriterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "AdGroupCriterion.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::AdGroupCriterionOperation,
    :schema_type => XSD::QName.new(NsV201003, "AdGroupCriterionOperation"),
    :schema_basetype => XSD::QName.new(NsV201003, "Operation"),
    :schema_element => [
      ["operator", "AdWords::V201003::AdGroupCriterionService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Operation.Type")], [0, 1]],
      ["operand", "AdWords::V201003::AdGroupCriterionService::AdGroupCriterion", [0, 1]],
      ["exemptionRequests", "AdWords::V201003::AdGroupCriterionService::ExemptionRequest[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::AdGroupCriterionPage,
    :schema_type => XSD::QName.new(NsV201003, "AdGroupCriterionPage"),
    :schema_basetype => XSD::QName.new(NsV201003, "Page"),
    :schema_element => [
      ["totalNumEntries", "SOAP::SOAPInt", [0, 1]],
      ["page_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Page.Type")], [0, 1]],
      ["entries", "AdWords::V201003::AdGroupCriterionService::AdGroupCriterion[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::AdGroupCriterionReturnValue,
    :schema_type => XSD::QName.new(NsV201003, "AdGroupCriterionReturnValue"),
    :schema_basetype => XSD::QName.new(NsV201003, "ListReturnValue"),
    :schema_element => [
      ["listReturnValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ListReturnValue.Type")], [0, 1]],
      ["value", "AdWords::V201003::AdGroupCriterionService::AdGroupCriterion[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::AdGroupCriterionSelector,
    :schema_type => XSD::QName.new(NsV201003, "AdGroupCriterionSelector"),
    :schema_element => [
      ["idFilters", "AdWords::V201003::AdGroupCriterionService::AdGroupCriterionIdFilter[]", [0, nil]],
      ["criterionUse", "AdWords::V201003::AdGroupCriterionService::CriterionUse", [0, 1]],
      ["userStatuses", "AdWords::V201003::AdGroupCriterionService::UserStatus[]", [0, nil]],
      ["statsSelector", "AdWords::V201003::AdGroupCriterionService::StatsSelector", [0, 1]],
      ["paging", "AdWords::V201003::AdGroupCriterionService::Paging", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::AdGroupCriterionErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "AdGroupCriterionError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::AdGroupCriterionLimitExceededCriteriaLimitType,
    :schema_type => XSD::QName.new(NsV201003, "AdGroupCriterionLimitExceeded.CriteriaLimitType")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::ApprovalStatus,
    :schema_type => XSD::QName.new(NsV201003, "ApprovalStatus")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::AuthenticationErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "AuthenticationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::AuthorizationErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "AuthorizationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::BidSource,
    :schema_type => XSD::QName.new(NsV201003, "BidSource")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::BiddingErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "BiddingError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::ClientTermsErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "ClientTermsError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::CriterionUse,
    :schema_type => XSD::QName.new(NsV201003, "CriterionUse")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::DatabaseErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "DatabaseError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::DateErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "DateError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::DistinctErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "DistinctError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::EntityAccessDeniedReason,
    :schema_type => XSD::QName.new(NsV201003, "EntityAccessDenied.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::EntityCountLimitExceededReason,
    :schema_type => XSD::QName.new(NsV201003, "EntityCountLimitExceeded.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::EntityNotFoundReason,
    :schema_type => XSD::QName.new(NsV201003, "EntityNotFound.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::InternalApiErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "InternalApiError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::KeywordMatchType,
    :schema_type => XSD::QName.new(NsV201003, "KeywordMatchType")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::NewEntityCreationErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "NewEntityCreationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::NotEmptyErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "NotEmptyError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::NotWhitelistedErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "NotWhitelistedError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::NullErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "NullError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::OperationAccessDeniedReason,
    :schema_type => XSD::QName.new(NsV201003, "OperationAccessDenied.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::Operator,
    :schema_type => XSD::QName.new(NsV201003, "Operator")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::PagingErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "PagingError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::QuotaCheckErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "QuotaCheckError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::RangeErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "RangeError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::RateExceededErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "RateExceededError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::ReadOnlyErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "ReadOnlyError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::RejectedErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "RejectedError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::RequestErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "RequestError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::RequiredErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "RequiredError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::SizeLimitErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "SizeLimitError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::StatsNetwork,
    :schema_type => XSD::QName.new(NsV201003, "Stats.Network")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::StatsQueryErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "StatsQueryError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::SystemServingStatus,
    :schema_type => XSD::QName.new(NsV201003, "SystemServingStatus")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::UserStatus,
    :schema_type => XSD::QName.new(NsV201003, "UserStatus")
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::Get,
    :schema_name => XSD::QName.new(NsV201003, "get"),
    :schema_element => [
      ["selector", "AdWords::V201003::AdGroupCriterionService::AdGroupCriterionSelector", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::GetResponse,
    :schema_name => XSD::QName.new(NsV201003, "getResponse"),
    :schema_element => [
      ["rval", "AdWords::V201003::AdGroupCriterionService::AdGroupCriterionPage", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::ApiException,
    :schema_name => XSD::QName.new(NsV201003, "ApiExceptionFault"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdWords::V201003::AdGroupCriterionService::ApiError[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::Mutate,
    :schema_name => XSD::QName.new(NsV201003, "mutate"),
    :schema_element => [
      ["operations", "AdWords::V201003::AdGroupCriterionService::AdGroupCriterionOperation[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::MutateResponse,
    :schema_name => XSD::QName.new(NsV201003, "mutateResponse"),
    :schema_element => [
      ["rval", "AdWords::V201003::AdGroupCriterionService::AdGroupCriterionReturnValue", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V201003::AdGroupCriterionService::SoapHeader,
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
    :class => AdWords::V201003::AdGroupCriterionService::SoapResponseHeader,
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
