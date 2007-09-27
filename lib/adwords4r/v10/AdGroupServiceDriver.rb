require 'adwords4r/v10/AdGroupService'
require 'adwords4r/v10/AdGroupServiceMappingRegistry'

module AdWords
module AdGroupService
require 'soap/rpc/driver'

class AdGroupInterface < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "https://adwords.google.com/api/adwords/v10/AdGroupService"

  Methods = [
    [ "",
      "addAdGroup",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v10", "addAdGroup"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v10", "addAdGroupResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::AdGroupService::ApiException"=>{:name=>"ApiException", :use=>"literal", :namespace=>nil, :encodingstyle=>"document", :ns=>"https://adwords.google.com/api/adwords/v10"}} }
    ],
    [ "",
      "addAdGroupList",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v10", "addAdGroupList"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v10", "addAdGroupListResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::AdGroupService::ApiException"=>{:name=>"ApiException", :use=>"literal", :namespace=>nil, :encodingstyle=>"document", :ns=>"https://adwords.google.com/api/adwords/v10"}} }
    ],
    [ "",
      "getAdGroup",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v10", "getAdGroup"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v10", "getAdGroupResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::AdGroupService::ApiException"=>{:name=>"ApiException", :use=>"literal", :namespace=>nil, :encodingstyle=>"document", :ns=>"https://adwords.google.com/api/adwords/v10"}} }
    ],
    [ "",
      "getAdGroupList",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v10", "getAdGroupList"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v10", "getAdGroupListResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::AdGroupService::ApiException"=>{:name=>"ApiException", :use=>"literal", :namespace=>nil, :encodingstyle=>"document", :ns=>"https://adwords.google.com/api/adwords/v10"}} }
    ],
    [ "",
      "getAdGroupStats",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v10", "getAdGroupStats"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v10", "getAdGroupStatsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::AdGroupService::ApiException"=>{:name=>"ApiException", :use=>"literal", :namespace=>nil, :encodingstyle=>"document", :ns=>"https://adwords.google.com/api/adwords/v10"}} }
    ],
    [ "",
      "getAllAdGroups",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v10", "getAllAdGroups"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v10", "getAllAdGroupsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::AdGroupService::ApiException"=>{:name=>"ApiException", :use=>"literal", :namespace=>nil, :encodingstyle=>"document", :ns=>"https://adwords.google.com/api/adwords/v10"}} }
    ],
    [ "",
      "updateAdGroup",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v10", "updateAdGroup"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v10", "updateAdGroupResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::AdGroupService::ApiException"=>{:name=>"ApiException", :use=>"literal", :namespace=>nil, :encodingstyle=>"document", :ns=>"https://adwords.google.com/api/adwords/v10"}} }
    ],
    [ "",
      "updateAdGroupList",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v10", "updateAdGroupList"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v10", "updateAdGroupListResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::AdGroupService::ApiException"=>{:name=>"ApiException", :use=>"literal", :namespace=>nil, :encodingstyle=>"document", :ns=>"https://adwords.google.com/api/adwords/v10"}} }
    ]
  ]

  def initialize(endpoint_url = nil)
    endpoint_url ||= DefaultEndpointUrl
    super(endpoint_url, nil)
    self.mapping_registry = DefaultMappingRegistry::EncodedRegistry
    self.literal_mapping_registry = DefaultMappingRegistry::LiteralRegistry
    init_methods
  end

private

  def init_methods
    Methods.each do |definitions|
      opt = definitions.last
      if opt[:request_style] == :document
        add_document_operation(*definitions)
      else
        add_rpc_operation(*definitions)
        qname = definitions[0]
        name = definitions[2]
        if qname.name != name and qname.name.capitalize == name.capitalize
          ::SOAP::Mapping.define_singleton_method(self, qname.name) do |*arg|
            __send__(name, *arg)
          end
        end
      end
    end
  end
end


end
end
