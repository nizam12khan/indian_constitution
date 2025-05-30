# frozen_string_literal: true

require_relative "lib/indian_constitution/version"

Gem::Specification.new do |spec|
  spec.name = "indian_constitution"
  spec.version = IndianConstitution::VERSION
  spec.authors = ["Nizamuddin Khan"]
  spec.email = ["nizam12khan@gmail.com"]

  spec.summary = "A Ruby gem providing structured access to the Indian Constitution's articles and amendments."
  spec.description = "This gem offers a programmatic interface to retrieve and search data from the Indian Constitution, including articles, amendments, and schedules. Designed for legal tech, news platforms, and AI applications, with contributions welcome from UPSC experts and Ruby developers."
  spec.homepage = "https://github.com/nizam12khan/indian-constitution-gem"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.1.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/nizam12khan/indian-constitution-gem"
  spec.metadata["changelog_uri"] = "https://github.com/nizam12khan/indian-constitution-gem/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  gemspec = File.basename(__FILE__)
  spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
    ls.readlines("\x0", chomp: true).reject do |f|
      (f == gemspec) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .github appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
    # Development dependencies for testing and linting
  spec.add_development_dependency "rspec", "~> 3.12"
  spec.add_development_dependency "rubocop", "~> 1.65"
end
