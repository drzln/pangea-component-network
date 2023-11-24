require %(terraform-synthesizer)
require %(json)

def symbolize(hash)
  JSON[JSON[hash], symbolize_names: true]
end

################################################################################
# external entities call render with data
# render implements the synthesizer and processes
# internal module with data
################################################################################

def render(data)
  synth = TerraformSynthesizer.new
  current_file_directory = File.dirname(File.expand_path(__FILE__))
  vpc_file_path = File.join(
    current_file_directory,
    '../',
    'resources',
    'vpc.rb'
  )
  vpc_content = File.read(vpc_file_path)
  synth.load_synthesis_data(data)
  synth.synthesize(vpc_content)
  synth.synthesis
end
