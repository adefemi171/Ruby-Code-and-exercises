puts 'This is the first {master} program file'
# Load 'loadee.rb'
# require './loadee'
require_relative 'loadee'
puts 'And back again to the first file.'
# Asking for two consecutive strings to be extracted from the original string
# with whitespace as an implied separator
require 'scanf'
name = 'Adefemi Micheal'
scan =  name.scanf('%s%s')
# Reversing a string
puts scan.reverse
