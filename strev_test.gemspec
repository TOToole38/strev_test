# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "strev_test/version"

Gem::Specification.new do |spec|
   # Meta data nonsense you should fill in as appropriate
  spec.name          = "strev_test"
  spec.version       = StrevTest::VERSION
  spec.authors       = ["totoole38"]
  spec.email         = ["totoole38@gmail.com"]

  spec.summary       = %q{Testing creating gems}
  spec.homepage      = "https://github.com/TOToole38/strev_test/blob/master/strev_test.gemspec"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end


  # Where your gem files live
  # Note that a Git command is used to locate all the
  # files in this gem... so your files will need to be
  # visible to Git (checked in) before you can use them!
  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }

  # Paths to make sure are required
  # You'll need to keep an eye on this as the gem expands
  spec.require_paths = ["lib"]


  # A few dependencies used by this gem during
  # the development/testing process (not included
  # when the gem is actually run)
  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"


  # A dependency that is required by this gem during
  # its actual production usage (added here as an example)
  # spec.add_dependency "simple_form"
end
