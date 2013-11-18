# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'notis/version'

Gem::Specification.new do |spec|
  spec.name          = "notis"
  spec.version       = Notis::VERSION
  spec.authors       = ["Chris Simpkins"]
  spec.email         = ["git.simpkins@gmail.com"]
  spec.description   = %q{notis is a Mac OSX utility that allows you to display a standard OSX toast message notification at the completion of a long-running command with the option to emit an audio signal.}
  spec.summary       = %q{notis}
  spec.homepage      = "https://github.com/chrissimpkins/notis"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency('bundler')
  spec.add_development_dependency "rake"
  spec.add_development_dependency('rdoc')
  spec.add_development_dependency('aruba')
  spec.add_development_dependency('rake', '~> 0.9.2')
  spec.add_dependency('methadone', '~> 1.3.1')
  spec.add_dependency('terminal-notifier', '~> 1.5.1')
end
