require_relative '../build'
require_relative './spec_helper'

describe 'build' do 
  it 'prints hello' do 
    test.should eq 'hello'
  end
end