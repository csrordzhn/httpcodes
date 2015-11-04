require 'csv'
require 'open-uri'

class Httpcodes

  def initialize
    @list = code_list
  end

  def code_list
    url = 'http://www.iana.org/assignments/http-status-codes/http-status-codes-1.csv'
    codes = {}
    CSV.new(open(url), :headers => :first_row).each do |line|
      codes[line['Description'].upcase] = line['Value'].to_i
    end
    codes
  end

  def find_by_code(code)
    @list.key(code)
  end

  def find_by_desc(desc)
    search_val = Regexp.new desc
    matches = @list.keys.grep search_val
    matches.map do |k|
      @list[k]
    end
  end

end
