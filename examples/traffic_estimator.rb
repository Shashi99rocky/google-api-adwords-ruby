#!/usr/bin/env ruby

# Use adwords4r in parent dir
$LOAD_PATH.unshift '../lib/'

require 'adwords4r'

SEP = "---"

def dumpObj(o)
    str = ""
    o.instance_variables.each { |v| str << dumpAttr(o, v)}
    return str << SEP
end

def dumpAttr(o, v)
    name = v.sub(/@/,'')
    value = eval("o.#{name}.to_s")
    return "#{name}: #{value}\n"
end

begin
    adwords = AdWords::API.new
    
    res = adwords.estimateKeywordList(
        [AdWords::KeywordRequest.new(nil, 50000, false, 'flowers', 'Broad')]).estimateKeywordListReturn
    res.each {|c| puts dumpObj(c)}

rescue AdWords::Error::UnknownAPICall => e
    puts e
rescue AdWords::Error::ApiError => e
    puts e.code
    puts e.message
end
