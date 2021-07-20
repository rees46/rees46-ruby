# frozen_string_literal: true

require_relative "lib/rees46/version"

Gem::Specification.new do |spec|
  spec.name          = "rees46"
  spec.version       = Rees46::VERSION
  spec.authors       = ["REES46"]
  spec.email         = ["desk@rees46.com"]

  spec.summary       = "Ruby SDK over REES46 REST API"
  spec.description   = "SDK provides easy access to REES46 Marketing Stack API"
  spec.homepage      = "https://rees46.com"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.4.0")

  spec.metadata["allowed_push_host"] = "https://rees46.com"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/rees46/rees46-ruby/"
  spec.metadata["changelog_uri"] = "https://github.com/rees46/rees46-ruby/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
