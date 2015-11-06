
require 'http_codes'
# create a new httpcodes
http_codes = HttpCodesFetcher::Httpcodes.new

#puts http_codes.size
puts http_codes.find_by_code(100)
# => string '100 - CONTINUE'
puts http_codes.find_by_desc('BAD')
# => array ['400 - BAD REQUEST','502 - BAD GATEWAY']
