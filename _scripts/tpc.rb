#!/usr/bin/env ruby

require 'csv'

if ARGV.length < 1
  print "Usage: #{$0} <filename>\n"
  exit 1
end

SECTION=""

FILENAME=ARGV[0]

list = CSV.parse(File.read(FILENAME), :headers => true)

list.each do |person|
  print "      - name:        #{person[0]} #{person[1]}\n"
  print "        affiliation: #{person[3]}\n"
end
