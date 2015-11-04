
require_relative 'httpcodes'

http_codes = Httpcodes.new

#puts http_codes.size
puts http_codes.find_by_code(100)
puts http_codes.find_by_desc('REQUEST')
