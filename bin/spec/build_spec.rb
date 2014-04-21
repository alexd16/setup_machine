require_relative '../build'
require_relative './spec_helper'

describe SetupScriptBuilder do 
  before :each do 
    manifest_path = ''
    scripts_path = ''
    destination_path = ''
    @builder = SetupScriptBuilder.new(manifest_path, scripts_path, destination_path)
  end
  
end

=begin
describe 'build' do 
  describe 'gen_setup' do
    before :each do 
      @manifest = {scripts: ['first', 'second']}
    end
    it 'builds the setup script' do 
      gen_setup(@manifest)
    end
  end
end
=end
