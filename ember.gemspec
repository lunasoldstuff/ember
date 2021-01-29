# frozen_string_literal: true

require_relative "lib/ember/version"

Gem::Specification.new do |spec|
  spec.name          = "ember"
  spec.version       = Ember::VERSION
  spec.authors       = ["lunaisnotaboy"]
  spec.email         = ["her@mint.lgbt"]

  spec.summary       = "Open-source Matrix server written in Ruby"
  spec.homepage      = "https://devel.themintfarm.ml/themintfarm/ember"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.4.0")

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://devel.themintfarm.ml/themintfarm/ember"
  spec.metadata["changelog_uri"] = "https://devel.themintfarm.ml/themintfarm/ember/-/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.extensions    = ["ext/ember/extconf.rb"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"
end
