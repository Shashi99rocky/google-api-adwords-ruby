#!/usr/bin/ruby
#
# Author:: sgomes@google.com (Sérgio Gomes)
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
# Contains global utility methods.

module AdWords

  module Utils

    public

    # Gets a map from an array of map entries. A map entry is any object that
    # has a key and value field.
    #
    # Args:
    # - entries: list of map entries
    #
    # Returns:
    # - hash constructed from map entries
    #
    def self.get_map(entries)
      map = {}
      entries.each do |entry|
        map[entry.key] = entry.value
      end
      return map
    end

    # Returns the source operation index for an error
    #
    # Args:
    # - error: the error to be analyzed
    #
    # Returns:
    # - index for the source operation, nil if none
    #
    def self.operation_index_for_error(error)
      if error and error.respond_to? :fieldPath and error.fieldPath
        parts = error.fieldPath.split('.')
        if parts.length > 0
          match = parts.first.match(/operations\[(\d)\]/)
          return match ? match[1].to_i : nil
        end
      end
      return nil
    end
  end
end
