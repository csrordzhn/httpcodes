require 'minitest/autorun'
require './httpcodes.rb'

httpcodes_list = Httpcodes.new

describe 'httpcodes' do

  it 'should load the code list' do
    httpcodes_list.size.must_be :>=, 1
  end
  it 'should return a string with code and desc' do
    code_desc = httpcodes_list.find_by_code(100)
    code_desc.wont_be_empty
  end
  it 'should return err when code not found' do
    code_desc = httpcodes_list.find_by_code(15000)
    code_desc.must_match "Code not found"
  end
  it 'should return an string array with code and description' do
    code_list = httpcodes_list.find_by_desc('ConTInue')
    code_list.must_be_instance_of Array
    code_list.wont_be_empty
  end
  it 'should return err when code not found' do
  end

end
