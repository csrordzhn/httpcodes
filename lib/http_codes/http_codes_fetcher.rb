require 'csv'
require 'open-uri'

# Creates a hash of http codes from iana.org for developer reference inside pry
module HttpCodesFetcher
  class Httpcodes
    def initialize
      @list = code_list
    end

    def code_list
      url = 'http://www.iana.org/assignments/http-status-codes/http-status-codes-1.csv'
      codes = {}
      CSV.new(open(url), headers: :first_row).each do |line|
        codes[line['Description'].upcase] = line['Value'].to_i
      end
      codes
    end

    def find_by_code(code)
      desc = @list.key(code)
      fail 'Code not found' unless @list.key?(desc)
      @list[desc].to_s + ' - ' + desc
    rescue => e
      e.message
    end

    def find_by_desc(desc)
      search_val = Regexp.new desc.upcase
      matches = @list.keys.grep search_val
      fail 'Description not found' unless matches.size > 0
      matches.map do |k|
        @list[k].to_s + ' - ' + k.to_s
      end
    rescue => e
      e.message
    end

    def size
      @list.size
    end
  end
end
