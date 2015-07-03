#!/usr/bin/env ruby

require 'pathname'

input  = Pathname.new ARGV[0]
output = input.basename.to_s.chomp(input.extname) + '.mp3'

%x[avconv -i #{input.to_s.inspect} -ab 192k #{output.inspect}]
