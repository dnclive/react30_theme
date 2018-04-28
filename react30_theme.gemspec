
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "react30_theme/version"

Gem::Specification.new do |spec|
  spec.name          = "react30_theme"
  spec.version       = React30Theme::VERSION
  spec.authors       = ["Vladimir Zhlobentsev"]
  spec.email         = ["vladimir.zhlobentsev@gmail.com"]

  spec.summary       = %q{Rails Gem for wrapbootsrtap theme React-3.0}
  spec.description   = %q{Make by k0kubun/wrap-bootstrap-rails}
  spec.homepage      = "https://github.com/dnclive/react30_theme"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_dependency 'railties'
end