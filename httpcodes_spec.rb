require 'minitest/autorun'
require './httpcodes.rb'

def random_str(n)
  srand(n)
  (0..n).map { ('a'..'z').to_a[rand(26)]}.join
end

httpcodes_list = Httpcodes.new
random_code = Random.rand(1000...9999)
describe 'httpcodes' do

  it 'should load the code list' do
    httpcodes_list.size.must_be :>=, 1
  end
  it 'should return a string with code and desc' do
    code_desc = httpcodes_list.find_by_code(100)
    code_desc.wont_be_empty
  end
  it 'should return err when code not found' do
    code_desc = httpcodes_list.find_by_code(random_code)
    code_desc.must_match "Code not found"
  end
  it 'should return an string array with code and description' do
    code_list = httpcodes_list.find_by_desc('Continue')
    code_list.must_be_instance_of Array
    code_list.wont_be_empty
  end
  it 'should return err when code not found' do
    code_list = httpcodes_list.find_by_desc(random_str(15))
    code_list.must_match "Description not found"
  end

end
