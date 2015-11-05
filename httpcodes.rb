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
    begin
      desc = @list.key(code)
    rescue Exception => e
    end

    @list.has_key?(desc) ? @list[desc].to_s + " - " + desc : "Code not found"
  end

  def find_by_desc(desc)
    begin
      raise "Description is not a string" unless desc.class == String
      search_val = Regexp.new desc.upcase
      matches = @list.keys.grep search_val
      raise "Description not found" unless matches.size > 0
      matches.map do |k|
        @list[k].to_s + " - " + k.to_s
      end
    rescue Exception => e
      e.message
    end
  end

  def size
    @list.size
  end

end
