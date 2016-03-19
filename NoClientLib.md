# Introduction #

We do a lot of work in our client libraries to make them as easy to use as possible. However, sometimes it's impossible to integrate it into existing systems. This is a quick guide to help you with using the AdWords API in Ruby when **adwords4r** is not an option.

# Dependencies #

The first thing you'll need is a SOAP library. For all the workarounds that are required (more on that later), **soap4r** is still the best option. A simple

```
% gem install soap4r
```

should do the trick.

**httpclient** is also necessary, but the default version included with Ruby should work out of the box.

# Authentication #

The first step in using the AdWords API is authenticating successfully. For that, you can simply use [authtoken.rb](http://code.google.com/p/google-api-adwords-ruby/source/browse/trunk/lib/adwords4r/authtoken.rb), part of the client library source code, since it has no external dependencies other than **httpclient**.

```
require 'authtoken'
auth_token = AdWords::AuthToken.get_token(email, password, 'www.google.com', 443, true)
```

# Service headers #

Login details are specified in SOAP headers, so it's crucial that you are able to specify these. **soap4r** handles this with the SOAP::Header::SimpleHeader class: by deriving a subclass and overloading _on\_simple\_outbound_, you can specify your own request headers. Here's an example class that you can modify to suit your needs:

```
require 'rubygems'
gem 'soap4r'
require 'soap/header/simplehandler'

class ExampleHeaderHandler < SOAP::Header::SimpleHandler

  def initialize(namespace, auth_token, user_agent, developer_token,
      client_email)
    super(XSD::QName.new(namespace, 'RequestHeader'))
    @auth_token = auth_token
    @user_agent = user_agent
    @developer_token = developer_token
    @client_email = client_email
  end

  def on_simple_outbound
    ns = 'https://adwords.google.com/api/adwords/cm/v200909'
    header = SOAP::SOAPElement.new(nil)
    auth_token = SOAP::SOAPElement.new(XSD::QName.new(ns, 'authToken'),
        @auth_token)
    user_agent = SOAP::SOAPElement.new(XSD::QName.new(ns, 'userAgent'),
        @user_agent)
    dev_token = SOAP::SOAPElement.new(XSD::QName.new(ns, 'developerToken'),
        @developer_token)
    client_email = SOAP::SOAPElement.new(XSD::QName.new(ns, 'clientEmail'),
         @client_email)
    header.add(auth_token)
    header.add(user_agent)
    header.add(dev_token)
    header.add(client_email)
    return header
  end
end
```

It takes several parameters, most of which you should recognize (_auth\_token_ would be the authentication token from the previous step and _user\_agent_, developer\_token and _client\_email_ are AdWords login credentials.

_namespace_, however, is trickier; this is the namespace for the specific service you're calling. For most services, this would be _https://adwords.google.com/api/adwords/cm/v200909_, but the _InfoService_, for example, uses _https://adwords.google.com/api/adwords/info/v200909_. In order to check which namespace to use for the specific service you're invoking, check the _Namespace_ entry in the [service's documentation page](http://code.google.com/apis/adwords/v2009/docs/reference/InfoService.html).

# Calling a service #

There are two options for calling a web service with **soap4r**: reading the WSDL at runtime, or generating Ruby classes from the WSDL and using those. Here we'll take the first, since it's the simplest, and the one least likely to require patching to the **soap4r** library.

```
require 'soap/wsdlDriver'
wsdl = 'https://adwords.google.com/api/adwords/cm/v200909/CampaignService?wsdl'
campaign_service = SOAP::WSDLDriverFactory.new(wsdl).create_rpc_driver
```

This will generate the driver for you. You'll then need to add your header handler to it:
```
header_handler = ExampleHeaderHandler.new(namespace, auth_token, 
    'test_useragent', dev_token, client_email)
campaign_service.headerhandler << header_handler
```

To retrieve a specific campaign, for example, you'd do:
```
selector = {
  :ids => [ campaign_id ]
}
response = campaign_service.get(:selector => selector)
campaign = response.rval.entries.first
```

Note: Some services require typed objects in certain requests. An example of this is the _AdGroupService_, where bidding requires a typed object, like an instance of _ManualCPCAdGroupBids_. In order to get this to work, you'll need to create a SOAPElement object and add an _xsi:type_ property to it:

```
# Create new ad group structure.
bids_element = SOAP::SOAPElement.new(
    SOAP::SOAPElement.to_qname('bids', namespace))
bids_element.extraattr['xsi:type'] =
    SOAP::SOAPElement.to_qname('ManualCPCAdGroupBids', namespace)
keyword_max_cpc = {
  :amount => {
    :currencyCode => 'USD',
    :microAmount => 10000000
  }
}
keyword_max_cpc_element = SOAP::SOAPElement.from_obj(keyword_max_cpc, namespace)
keyword_max_cpc_element.elename =
    SOAP::SOAPElement.to_qname('keywordMaxCpc', namespace)
keyword_max_cpc_element.extraattr['xsi:type'] =
    SOAP::SOAPElement.to_qname('Bid', namespace)
bids_element.add(keyword_max_cpc_element)

operation = {
  :operand => {
    :name => 'Sample Ad Group - %s' % Time.new,
    :status => 'ENABLED',
    :campaignId => campaign_id,
    :bids => bids_element,
  },
  :operator => 'ADD'
}

# Add ad group.
response = ad_group_service.mutate(:operations => [operation])
ad_groups = response.rval.value
```