require 'adwords4r/v11/ReportService'
require 'adwords4r/v11/ReportServiceMappingRegistry'
require 'soap/rpc/driver'

module AdWords
module ReportService

class ReportInterface < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "https://adwords.google.com/api/adwords/v11/ReportService"

  Methods = [
    [ "",
      "deleteReport",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v11", "deleteReport"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v11", "deleteReportResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::ReportService::ApiException"=>{:namespace=>nil, :ns=>"https://adwords.google.com/api/adwords/v11", :encodingstyle=>"document", :use=>"literal", :name=>"ApiException"}} }
    ],
    [ "",
      "getAllJobs",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v11", "getAllJobs"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v11", "getAllJobsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::ReportService::ApiException"=>{:namespace=>nil, :ns=>"https://adwords.google.com/api/adwords/v11", :encodingstyle=>"document", :use=>"literal", :name=>"ApiException"}} }
    ],
    [ "",
      "getGzipReportDownloadUrl",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v11", "getGzipReportDownloadUrl"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v11", "getGzipReportDownloadUrlResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::ReportService::ApiException"=>{:namespace=>nil, :ns=>"https://adwords.google.com/api/adwords/v11", :encodingstyle=>"document", :use=>"literal", :name=>"ApiException"}} }
    ],
    [ "",
      "getReportDownloadUrl",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v11", "getReportDownloadUrl"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v11", "getReportDownloadUrlResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::ReportService::ApiException"=>{:namespace=>nil, :ns=>"https://adwords.google.com/api/adwords/v11", :encodingstyle=>"document", :use=>"literal", :name=>"ApiException"}} }
    ],
    [ "",
      "getReportJobStatus",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v11", "getReportJobStatus"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v11", "getReportJobStatusResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::ReportService::ApiException"=>{:namespace=>nil, :ns=>"https://adwords.google.com/api/adwords/v11", :encodingstyle=>"document", :use=>"literal", :name=>"ApiException"}} }
    ],
    [ "",
      "scheduleReportJob",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v11", "scheduleReportJob"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v11", "scheduleReportJobResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::ReportService::ApiException"=>{:namespace=>nil, :ns=>"https://adwords.google.com/api/adwords/v11", :encodingstyle=>"document", :use=>"literal", :name=>"ApiException"}} }
    ],
    [ "",
      "validateReportJob",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v11", "validateReportJob"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v11", "validateReportJobResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::ReportService::ApiException"=>{:namespace=>nil, :ns=>"https://adwords.google.com/api/adwords/v11", :encodingstyle=>"document", :use=>"literal", :name=>"ApiException"}} }
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
