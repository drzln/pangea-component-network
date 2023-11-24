# frozen_string_literal: true

lib = File.expand_path(%(lib), __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require_relative %(./lib/pangea/component/network/version)

Gem::Specification.new do |spec|
  spec.name                  = %(pangea-component-network)
  spec.version               = Pangea::Component::Network::VERSION
  spec.authors               = [%(drzthslnt@gmail.com)]
  spec.email                 = [%(drzthslnt@gmail.com)]
  spec.description           = %(network components)
  spec.summary               = %(network components)
  spec.homepage              = %(https://github.com/drzln/#{spec.name})
  spec.license               = %(MIT)
  spec.require_paths         = [%(lib)]
  spec.required_ruby_version = %(>= #{`cat .ruby-version`})

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  %i[
    rubocop-rspec
    rubocop-rake
    solargraph
    keycutter
    rubocop
    rspec
    rake
    yard
  ].each do |gem|
    spec.add_development_dependency(gem)
  end

  %i[terraform-synthesizer].each do |gem|
    spec.add_runtime_dependency(gem)
  end

  spec.metadata[%(rubygems_mfa_required)] = %(true)
end
