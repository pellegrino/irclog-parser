# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'irclog_parser/version'

Gem::Specification.new do |gem|
  gem.name          = "irclog_parser"
  gem.version       = Irclog::Parser::VERSION
  gem.authors       = ["Vitor Pellegrino"]
  gem.email         = ["vitorp@gmail.com"]
  gem.description   = %q{Parses IRCLog log files}
  gem.summary       = %q{Parses IRCLog log files}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency 'rspec'
end
