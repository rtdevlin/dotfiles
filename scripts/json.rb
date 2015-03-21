#!/usr/bin/env ruby

require 'pry'
require 'json'

url    = ARGV[0]
result = %x[curl "#{url}"]
json   = JSON.parse result

binding.pry
