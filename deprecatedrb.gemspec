# frozen_string_literal: true

require_relative "lib/deprecated/version"

Gem::Specification.new do |spec|
  spec.name = "deprecatedrb"
  spec.version = Deprecated::VERSION
  spec.authors = ["Mike Perham"]
  spec.email = ["mperham@gmail.com"]

  spec.summary = "An API for deprecating APIs"
  spec.description = "An API for deprecating APIs."
  spec.homepage = "https://github.com/contribsys/deprecatedrb"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.7.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/contribsys/deprecatedrb"
  spec.metadata["changelog_uri"] = "https://github.com/contribsys/deprecatedrb/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
