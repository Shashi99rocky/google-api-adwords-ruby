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
# This example uploads an image. To get images, run get_all_images.rb.
#
# Tags: MediaService.upload

require 'rubygems'
gem 'soap4r', '= 1.5.8'
require 'adwords4r'
require 'base64'

API_VERSION = 201003

def upload_image()
  # AdWords::AdWordsCredentials.new will read a credentials file from
  # ENV['HOME']/adwords.properties when called without parameters.
  adwords = AdWords::API.new
  media_srv = adwords.get_service('Media', API_VERSION)

  # Create image.
  # The 'module' method being called here provides a shortcut to the
  # module containing the classes for this service. This helps us avoid
  # typing the full class name every time we need to create an object.
  image = media_srv.module::Image.new
  image_url = 'https://sandbox.google.com/sandboximages/image.jpg'
  http_client = HTTPClient.new
  image_data = http_client.get_content(image_url)
  base64_image_data = Base64.encode64(image_data)
  image.data = base64_image_data
  image.mediaTypeDb = 'IMAGE'
  image.name = 'Sample Image'

  # Upload image.
  response = media_srv.upload([image])
  if response
    image = response.first
    dimensions = AdWords::Utils.get_map(image.dimensions)
    puts "Image with id #{image.mediaId}, dimensions " +
         "#{dimensions['FULL'].height}x#{dimensions['FULL'].width} " +
         "and MIME type \"#{image.mimeType}\" uploaded successfully."
  else
      puts "No images uploaded."
  end
end

if __FILE__ == $0
  # To enable logging of SOAP requests, set the ADWORDS4R_DEBUG environment
  # variable to 'true'. This can be done either from your operating system
  # environment or via code, as done below.
  ENV['ADWORDS4R_DEBUG'] = 'false'

  begin
    upload_image()

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
