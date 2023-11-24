require %(terraform-synthesizer)

################################################################################
# external entities call render with data
# render implements the synthesizer and processes
# internal module with data
################################################################################

def render(_data)
  synth = TerraformSynthesizer.new
  # return hash of rendered component
  {}
end
