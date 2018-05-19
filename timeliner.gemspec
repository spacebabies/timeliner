$:.push File.expand_path("../lib", __FILE__)

require "timeliner/version"

Gem::Specification.new do |spec|
  spec.name          = "timeliner"
  spec.version       = Timeliner::VERSION
  spec.authors       = ["Joost Baaij"]
  spec.email         = ["joost@spacebabies.nl"]

  spec.summary       = 'Track activities inside a Rails application'
  spec.description   = 'Track activities inside a Rails application'
  spec.homepage      = "https://github.com/spacebabies/timeliner"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'rails'

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
