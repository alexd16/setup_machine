class Manifest
  def initialize(manifest_config)
    @scripts = manifest_config['scriptss'].map do |script_config|
      Script.new(script_config)
    end
  end
end

class Script
  def initialize(script_config)
    @path = scripts_config['name']
    @args = script_config['args']
  end

  def gen

  end

  private 
  attr_reader :args

  def gen_args
    generated_args = []
    args.each do |arg|
      generated_args << gen_arg(arg)
    end
  end

  def gen_arg(arg)
    name = arg['name']
    value = arg['value']
    variables = []
    
  end
end

class ScriptBuilder

  DEFAULT_CONFIG = {
    'destination_file' => 'setup.sh'
    'components_dir' => 'components'
  }

  def initialize(manifest, config)
    @manifest = parse_manifest(manifest)
    @config = config || DEFAULT_CONFIG
  end

  def build
    destination = @config['destination_file']
    File.open(yourfile, 'w') do |file| 
      file.write("your text") 
    end
  end

  Config = Struct.new(:destination_file, :components_dir)
end

manifest_config = JSON.parse file.open('manifest.json').read
manifest = Manifest.new(manifest_config)
builder = ScriptBuilder.new(manifest)

builder.build