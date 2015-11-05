require '../lib/http_codes/httpcodes.rb'

begin
  fail ArgumentError, "Usage: findcodes [desc/code] [val]\n" if ARGV.count != 2

  mode = ARGV[0]
  val = ARGV[1]
  code_list = HttpCodesFetcher::Httpcodes.new

  if mode == 'desc'
    code_list.find_by_desc(val).map do |c|
      puts c
    end
  elsif mode == 'code'
    puts code_list.find_by_code(val.to_i)
  end

rescue => e
  puts "Something went wrong: #{e}"
end
