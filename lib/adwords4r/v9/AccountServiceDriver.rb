module AdWords
require 'adwords4r/v9/AccountService'

require 'soap/rpc/driver'

class AccountInterface < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "https://adwords.google.com/api/adwords/v9/AccountService"
  MappingRegistry = ::SOAP::Mapping::Registry.new

  Methods = [
    [ "",
      "getAccountInfo",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v9", "getAccountInfo"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v9", "getAccountInfoResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "",
      "getClientAccounts",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v9", "getClientAccounts"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v9", "getClientAccountsResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "",
      "setLoginInfo",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v9", "setLoginInfo"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v9", "setLoginInfoResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "",
      "updateAccountInfo",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v9", "updateAccountInfo"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v9", "updateAccountInfoResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ]
  ]

  def initialize(endpoint_url = nil)
    endpoint_url ||= DefaultEndpointUrl
    super(endpoint_url, nil)
    self.mapping_registry = MappingRegistry
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
